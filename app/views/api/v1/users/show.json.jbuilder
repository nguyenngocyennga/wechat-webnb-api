json.user do
  json.extract! @user, :id, :username, :phone_number
  json.apartments do
    json.array! @user.apartments do |apartment|
      json.extract! apartment, :id, :title, :city, :address, :capacity, :price, :description, :photo, :available
    end
  end
end