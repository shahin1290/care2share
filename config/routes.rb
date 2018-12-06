Rails.application.routes.draw do
  resources :campaigns, only: [:index, :new, :create, :show]
  root controller: :campaigns, action: :index
end
