json.users do
  json.array! @users do |user|
    json.extract! user, :id, :username, :avatar, :phone_number
  end
end