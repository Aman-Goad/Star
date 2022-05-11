Rails.application.routes.draw do
  resources :create_users
  #resources :users
  root 'articles#index'
  get '/articles', to: 'articles#index'
  resources :login_forms
  #resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :articles
end
