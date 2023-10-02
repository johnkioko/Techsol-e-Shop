Rails.application.routes.draw do
  get 'admin/index'
  get 'admin/new'
  get 'admin/edit'
  get 'admin/show'
  get 'admin/destroy'
  get 'shipments/show'
  get 'shipments/edit'
  get 'payments/new'
  get 'payments/create'
  get 'carts/show'
  get 'carts/add_to_cart'
  get 'carts/update_cart'
  get 'carts/checkout'
  get 'reviews/new'
  get 'reviews/edit'
  get 'reviews/show'
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/create'
  get 'orders/checkout'
  get 'orders/confirm'
  get 'addresses/new'
  get 'addresses/edit'
  get 'addresses/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/edit'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/edit'
  get 'products/search'
  get 'products/results'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "welcome#index"

  resources :users, only: [:new, :create, :edit, :update, :show]
  resources :products
end
