Rails.application.routes.draw do
  devise_for :users
  resources :campaigns, only: [:index, :new, :create, :show]
  get 'admin', to: :admin, controller: 'campaigns'
  root controller: :campaigns, action: :index
end
