Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'users', to: 'users/registrations#new'
  end

  resources :kartes
  root 'kartes#index'
end
