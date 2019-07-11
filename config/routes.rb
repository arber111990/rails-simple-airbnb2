Rails.application.routes.draw do
  root to: 'flat#index'
  resources :flats
end
