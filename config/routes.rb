Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'users', to: 'users/registrations#new'
  end

  resources :kartes
  root 'kartes#index'

  resources :users, only: [:show] do
    member do
      get 'logout'
    end
  end
end
