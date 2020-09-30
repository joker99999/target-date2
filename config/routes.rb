Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  # get 'homes/index'
  # get 'homes/show'
  resources :messages
  resources :users, only: [:index]
  resources :groups
  resources :shares
end

