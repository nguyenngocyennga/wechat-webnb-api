json.user do
  json.extract! @user, :id, :username, :phone_number, :avatar
end