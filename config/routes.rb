Rails.application.routes.draw do
  devise_for :users
  resources :users

  root to: 'pages#home'

  resources :teddies do
      resources :stages, only: [:show]
  end

end
