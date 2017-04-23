Rails.application.routes.draw do
  resources :pages
  resources :gamerooms do
    resource :gameroom_users


  end
  devise_for :users
  root 'pages#index'
end