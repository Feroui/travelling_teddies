Rails.application.routes.draw do
  devise_for :users
  resources :users, only [:show, :create, :destroy]

  root to: 'pages#home'

  resources :teddies do
      resources :stage [:index, :show, :create]
  end

  resources :stages [:index, :show, :create]

end
