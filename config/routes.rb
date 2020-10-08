Rails.application.routes.draw do
  devise_for :users
  root to: "targets#index"
  # get 'homes/index'
  # get 'homes/show'
  resources :targets
  resources :messages
  resources :users, only: [:index]
  resources :groups
  resources :shares
  resources :questions
end

