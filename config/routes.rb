Rails.application.routes.draw do
  resources :cars
  resources :rentals
  root "cars#index"
end
