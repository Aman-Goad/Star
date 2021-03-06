Rails.application.routes.draw do
  root 'pages#home'
  #root 'articles#index'
  #get '/articles', to: 'articles#index'
 get 'about', to: 'pages#about'
  resources :articles
  #resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  get 'signup', to: 'users#new'
  resources :users, except: [:new ]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  
end
