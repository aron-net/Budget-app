Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :users
  resources :payments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end