Rails.application.routes.draw do
  devise_for :users
  resources :campaigns
  resources :donations, only: [:new, :create]
  root controller: :campaigns, action: :index
end
