Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :users, only: [:show]

  root to: 'homes#index'
  get '/home', to: 'homes#index'

  devise_for :users
  resources :users, only: :show

  resources :skills

  get 'texts/:id', to: 'texts#show'
end
