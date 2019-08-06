json.apartments do
  json.array! @apartments do |apartment|
    json.extract! apartment, :title, :city, :address, :capacity, :price, :description, :photo, :available
    json.user do
      json.extract! apartment.user, :id
    end
  end
end