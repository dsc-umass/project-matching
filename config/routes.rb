Rails.application.routes.draw do
  resources :organizations
  resources :types, only: [:index, :show]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get '/profile', to: 'pages#profile'
end
