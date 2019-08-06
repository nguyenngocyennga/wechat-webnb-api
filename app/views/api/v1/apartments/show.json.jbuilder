json.apartment do
  json.extract! @apartment, :id, :title, :city, :address, :capacity, :price, :description, :photo, :available, :user_id
  json.user do
    json.extract! @apartment.user, :id
  end
end