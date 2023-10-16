Rails.application.routes.draw do
  devise_for :users, skip: :all

  namespace :api do
    post 'login', to: 'users#login'
    get 'feed', to: 'scores#user_feed'
    get 'golfer/:golfer_id', to: 'scores#golfer'
    resources :scores, only: %i[create destroy]
  end
end
