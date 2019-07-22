Rails.application.routes.draw do
  get 'customers/index'
  get 'customers/show'
  get 'customers/new'
  get 'customers/edit'
  devise_for :users
  resources :orders

  root 'orders#index'
end
