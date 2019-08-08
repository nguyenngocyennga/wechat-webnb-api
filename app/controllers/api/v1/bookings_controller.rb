class Api::V1::BookingsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_booking, only: [:show, :update, :destroy]
  before_action :set_user, only: [:index, :create]
  before_action :set_apartment, only: [:create, :update]

	def index
    @bookings = @user.bookings
  end
  
  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.apartment = @apartment
    if @booking.save
    	@user.save
    	@apartment.save
    else
      render_error
    end
  end
  
  def update
    if @booking.update(booking_params)
      render :show
    else
      render_error
    end
  end
  
  def destroy
    @booking.destroy
    render json: { message: "Booking was successfully deleted. "}
  end


  private
  def booking_params
    params.require(:booking).permit(:user_id, :apartment_id, :arrival_date, :departure_date, :total_price, :booking_status)
  end

  def set_booking
  	@booking = Booking.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_apartment
    @apartment = Apartment.find(params[:apartment_id])
  end

  def render_error
    render json: { errors: @booking.errors.full_messages }, status: :unprocessable_entity
  end
end