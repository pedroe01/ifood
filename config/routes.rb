Rails.application.routes.draw do
  get 'carrinho', to: 'carrinho#show'
  post 'carrinho/add'
  post 'carrinho/remove'
  get 'relatorios', to: 'relatorios#show'
  get 'pedido', to: 'pedido#show'
  resources :formapagamentos
  resources :enderecos
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
