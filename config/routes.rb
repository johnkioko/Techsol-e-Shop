Rails.application.routes.draw do
  resources :carts
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"

  resources :users, only: [:new, :create, :edit, :update, :show, :index]
  resources :products
  resources :categories
  resources :addresses, only: [:new, :create, :edit, :update, :index]
  resources :orders, only: [:index, :show, :new, :create]
  get 'orders/checkout/:id', to: 'orders#checkout', as: 'checkout'
  post 'orders/confirm/:id', to: 'orders#confirm', as: 'confirm_order'

  resources :reviews, only: [:new, :create, :edit, :update, :show]
  resource :cart, only: [:show, :update]
  get 'cart/add_to_cart/:product_id', to: 'carts#add_to_cart', as: 'add_to_cart'
  get 'cart/update_cart', to: 'carts#update_cart', as: 'update_cart'
  get 'cart/checkout', to: 'carts#checkout', as: 'checkout_cart'
  resources :payments, only: [:new, :create]

  # Routes for ShipmentsController
  resources :shipments, only: [:show, :edit]

  # Admin panel routes for managing products and categories
  namespace :admin do
    resources :products
    resources :categories
  end
end
