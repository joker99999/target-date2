Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "targets#index"
  # get 'homes/index'
  # get 'homes/show'
  resources :targets
  resources :messages
  resources :users, only: [:index, :show]
  resources :shares do
    resources :sharecomments, only: [:create]
  end
  resources :questions 
  resources :healths
end

