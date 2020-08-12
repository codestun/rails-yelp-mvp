Rails.application.routes.draw do
  get 'restaurants/status'
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
end
