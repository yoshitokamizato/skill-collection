Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # url home, homeコントローラのindexアクションを指定
  get '/home', to: 'home#index'

  root to: 'home#index'
end
