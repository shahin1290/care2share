Rails.application.routes.draw do
  devise_for :users
  resources :campaigns
  get 'admin', to: 'campaigns#admin'
  root controller: :campaigns, action: :index
end
