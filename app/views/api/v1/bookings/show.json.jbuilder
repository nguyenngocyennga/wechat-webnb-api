json.booking do 
  json.extract! @booking, :id, :user_id, :apartment_id, :arrival_date, :departure_date, :total_price, :booking_status
  json.booking do
    json.extract! @booking.apartment, :title, :city, :address, :capacity, :price, :description, :photo, :available
  end
end