Rails.application.routes.draw do
  resources :campaigns
  root controller: :campaigns, action: :index
end
