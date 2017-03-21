Rails.application.routes.draw do
  Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  end
  resources :users

  root to: 'pages#home'

  resources :teddies do
      resources :stages, only: [:show]
  end
  mount Attachinary::Engine => "/attachinary"
end
