json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :id, :user_id, :apartment_id, :arrival_date, :departure_date, :total_price, :booking_status
    json.user do
      json.extract! booking.user, :id
    end
  end
end