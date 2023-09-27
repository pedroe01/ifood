Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'carts/show'
  resources :produtos
  root to: "home#index"
  devise_for :users, controllers: {
    registrations:      'users/registrations',
    sessions:           'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
