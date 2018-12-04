Rails.application.routes.draw do
  get 'campaigns/index'
  root controller: :campaigns, action: :index
end
