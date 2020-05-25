Rails.application.routes.draw do
  get 'homepage/index'
  resources :organizations

  root 'homepage#index'
end
