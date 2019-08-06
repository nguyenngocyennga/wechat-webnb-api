Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, shallow: true do
        resources :apartments, shallow: true
        resources :bookings, shallow: true
      end
    end
  end
end
