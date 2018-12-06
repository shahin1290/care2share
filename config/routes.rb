Rails.application.routes.draw do
  devise_for :users
  resources :campaigns, only: [:index, :new, :create]
  root controller: :campaigns, action: :index
end
