json.apartment do
  json.extract! @apartment, :title, :city, :address, :capacity, :price, :description, :photo, :available
  json.user do
    json.extract! @apartment.user, :id
  end
end