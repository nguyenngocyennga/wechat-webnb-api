json.apartments do
  json.array! @apartments do |apartment|
    json.extract! apartment, :id, :title, :city, :address, :capacity, :price, :description, :photo, :available
    json.user do
      json.extract! apartment.user, :id
    end
  end
end