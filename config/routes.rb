Rails.application.routes.draw do
  get 'restaurantgit/status'
  resources :restaurants
end
