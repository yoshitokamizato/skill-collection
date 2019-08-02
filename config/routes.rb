Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # url home, homeコントローラのindexアクションを指定
  get '/home', to: 'homes#index'
  root to: 'homes#index'
  get 'homes/:id', to: 'homes#show'
end
