Rails.application.routes.draw do
  get 'restaurants/status'
  resources :restaurants do
    resources :reviews, only: [ :new, :create, :destroy]
  end
end
