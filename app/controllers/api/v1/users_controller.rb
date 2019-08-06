class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:update]
  before_action :set_user, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
  end
  
  def show
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
    else
      render_error
    end
  end
  
  def update
    if @user.update(user_params)
      render :show
    else
      render_error
    end
  end
  
  def destroy
    @user.destroy
    render json: { message: "User was successfully deleted. "}
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :phone_number, :avatar)
  end
  
  def set_user
    @user = User.find(params[:id])    
  end
  
  def render_error
    render json: { errors: @user.errors.full_message }, status: :unprocessable_entity
  end
  
end