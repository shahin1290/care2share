Rails.application.routes.draw do
  resources :campaigns, only: [:index, :new, :create]
  root controller: :campaigns, action: :index
end
