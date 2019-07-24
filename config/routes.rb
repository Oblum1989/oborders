Rails.application.routes.draw do

  resources :order_products
  get 'products/index'
  resources :customers
  devise_for :users
  resources :orders

  root 'orders#index'
end
