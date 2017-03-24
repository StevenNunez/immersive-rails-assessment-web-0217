Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "root#index"
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create]
  resources :desired_bookings, only: [:index]
end
