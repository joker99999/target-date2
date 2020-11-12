Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
   }
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  resources :users, only: [:index, :show]
  root to: "targets#index"
  resources :targets
  resources :messages
  resources :shares do
    resources :sharecomments, only: [:create]
  end
  resources :questions do
    resources :questioncomments, only: [:create]
  end
  resources :healths
end

