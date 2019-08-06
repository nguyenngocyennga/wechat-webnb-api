class Api::V1::ApartmentsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_apartment, only: [:show, :update, :destroy]
  before_action :set_user, only: [:index, :create]
  
  def index
    @apartments = @user.apartments
  end
  
  def show    
  end
  
  def create
    @apartment = Apartment.new(apartment_params)
    @apartment.user = @user
    if @apartment.save
      @user.save
    else
      render_error
    end
  end
  
  def update
    if @apartment.update(apartment_params)
    else
      render_error
    end
  end
  
  def destroy
    @apartment.destroy
    render json: { message: "#{@apartment.title} was deleted."}
  end
  
  private
  
  def apartment_params
    params.require(:apartment).permit(:title, :city, :address, :capacity, :price, :description, :photo, :available, :user_id)
  end
  
  def set_user
    @user = User.find(params[:user_id])
  end
  
  def set_apartment
    @apartment = Apartment.find(params[:id])
  end
  
  def render_error
    render json: { errors: @apartment.errors.full_messages }, status: :unprocessable_entity
  end
end