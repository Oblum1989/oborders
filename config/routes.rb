Rails.application.routes.draw do
  get 'products/index'
  resources :customers
  devise_for :users
  resources :orders

  root 'orders#index'
end
