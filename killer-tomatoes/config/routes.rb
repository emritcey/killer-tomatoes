Rails.application.routes.draw do
  get 'welcome/index'
  resources :user
  resources :sessions, only: [:new, :create, :destroy]

  root 'movies#index'

  resources :movie, only: [:show]

end
