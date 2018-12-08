Rails.application.routes.draw do
  devise_for :users
  resources :campaigns
  get 'admin', to: :admin, controller: 'campaigns'
  root controller: :campaigns, action: :index
end
