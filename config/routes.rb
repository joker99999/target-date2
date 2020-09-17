Rails.application.routes.draw do
  root to: "homes#index"
  get 'homes/index'
  get 'homes/show'
  resource :message
  get 'messages/index'
  resource :group
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
end

