Rails.application.routes.draw do
  resources :customers
  devise_for :users
  resources :orders

  root 'orders#index'
end
