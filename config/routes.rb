Rails.application.routes.draw do
  devise_for :users
  # resources :splashes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :payments
  end
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "categories#index"
end
