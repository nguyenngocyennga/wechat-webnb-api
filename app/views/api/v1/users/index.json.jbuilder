json.users do
  json.array! @users do |user|
    json.extract! user, :id, :username, :avatar, :phone_number
    json.apartments do
      json.array! user.apartments do |apartment|
        json.extract! apartment, :id, :title, :city, :address
      end
    end
  end
end