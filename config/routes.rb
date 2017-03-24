Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users
  get 'dashboard', to: 'users#dashboard'
  get 'backpacker', to: 'teddies#backpacker'

  resources :teddies do
    collection do
      post :validate_code
    end
    resources :stages, only: [:show, :index, :new]
    resources :followers, only: [:create, :destroy]
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"
end
