Rails.application.routes.draw do

  root  'pages#home'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'editor', to: 'sessions#new', as: 'editor'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :pages, only: [:home, :new, :create]
  resources :tours
  get 'authorized', to: 'tours#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
