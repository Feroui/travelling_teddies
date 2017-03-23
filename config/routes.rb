Rails.application.routes.draw do
  Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  end
  resources :users

  root to: 'pages#home'

  get 'backpacker', to: 'users#backpacker'

  resources :teddies do
      resources :stages, only: [:show, :index, :new]
  end


  mount Attachinary::Engine => "/attachinary"
end
