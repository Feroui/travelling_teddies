Rails.application.routes.draw do
  devise_for :users
  resources :users

  root to: 'pages#home'

  resources :teddies do
      resources :stage
  end

  resources :stages

end
