Rails.application.routes.draw do
  resources :kartes
  root 'kartes#index'
end
