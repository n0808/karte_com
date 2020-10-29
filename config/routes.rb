Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'users', to: 'users/registrations#new'
  end

  resources :kartes do
    collection do
      get 'update_done'
      get 'delete_done'
      get 'search'
    end
  end

  root 'kartes#index'

  resources :users, only: [:show] do
    member do
      get 'logout'
    end
  end
end
