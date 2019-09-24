Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'homes#index'
  get '/home', to: 'homes#index'

  devise_for :users
  resources :users, only: :show

  resources :skills
  resources :goals


  get 'texts/:id', to: 'texts#show'
  get 'twitters/index', to: 'twitters#index'
end
