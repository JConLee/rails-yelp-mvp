Rails.application.routes.draw do
  resources :restaurants
  # resources :reviews, only: [:new, :create]
end
