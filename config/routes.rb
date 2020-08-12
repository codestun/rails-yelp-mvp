Rails.application.routes.draw do
  get 'restaurants/status'
  resources :restaurants
end
