Rails.application.routes.draw do
  # url home, homeコントローラのindexアクションを指定
  get '/home', to: 'home#index'
end
