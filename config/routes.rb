Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  get '/my_profile', to: 'users#show'
  # get 'home/index'
  root to: 'home#index'
end
