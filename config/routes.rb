Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  # 請依照專案指定規格來設定路由

  # Setup Routes for tweets and admin:tweets
  resources :tweets, only: [:index, :show]

  root "tweets#index"

  namespace :admin do
    resources :tweets  
    root "tweets#index"
  end

  # Setup Routes for users => for user profile page
  resources :users, only: [:index, :show, :edit, :update]

end
