Rails.application.routes.draw do

  root to: 'customers#index'

  # substitute for resources :orders
  # get 'orders/index'
  # get 'orders/show'
  # get 'orders/new'
  # get 'orders/edit'
  # get 'orders/delete'

  resources :customers
  resources :orders
  # Create a new set of routes to manage CRUD operations for the orders resource.  Do not nest these routes under customer.
  # resources :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
