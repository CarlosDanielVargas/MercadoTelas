Rails.application.routes.draw do
  resources :items
  resources :designs
  resources :brands
  resources :subcategories
  resources :categories
  resources :inventories
  resources :warehouses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
