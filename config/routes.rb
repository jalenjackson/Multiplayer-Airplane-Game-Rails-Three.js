Rails.application.routes.draw do
  resources :gamerooms do
    resource :gameroom_users
  end
  devise_for :users
  root 'gamerooms#index'
end