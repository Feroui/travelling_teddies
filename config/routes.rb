Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users
  get 'dashboard', to: 'users#dashboard'
  get 'backpacker', to: 'teddies#backpacker'
  get 'congrat', to: 'teddies#congrat'
  get 'about', to: 'pages#about'


  resources :teddies do
    collection do
      post :validate_code
    end

    resources :stages, only: [:show, :index, :new, :create]

    resources :followers, only: [:create, :destroy]
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"
end
