Rails.application.routes.draw do
  devise_for :users
  resources :campaigns
  resources :donations, only: [:new, :create]
  get 'admin', to: :admin, controller: 'campaigns'
  root controller: :campaigns, action: :index
end
