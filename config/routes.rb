Rails.application.routes.draw do
  devise_for :users
  resources :kartes
  root 'kartes#index'
end
