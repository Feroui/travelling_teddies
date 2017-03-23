Rails.application.routes.draw do
  Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  end
  resources :users
  get 'dashboard', to: 'users#dashboard'

  root to: 'pages#home'

  resources :teddies do
      resources :stages, only: [:show, :index]
      resources :followers, only: [:create, :destroy]
  end
  mount Attachinary::Engine => "/attachinary"
end
