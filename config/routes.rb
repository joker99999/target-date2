Rails.application.routes.draw do
  root "messages#index"
  resource :message
  # get  "tweets/new"  => "tweets#new"
  # post "tweets"      => "tweets#create"
end

