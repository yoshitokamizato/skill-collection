Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'homes#index'
  get '/home', to: 'homes#index'

  devise_for :users

  resources :skills

  get 'texts/:id', to: 'texts#show'
end
