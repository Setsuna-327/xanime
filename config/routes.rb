Rails.application.routes.draw do
get 'tweets/:tweet_id/likes' => 'likes#create'
  get 'tweets/:tweet_id/likes/:id' => 'likes#destroy'
  get 'tweets/:id' => 'tweets#show',as: 'tweet'
  resources :tweets
    resources :tweets do
        resources :likes, only: [:create, :destroy] 
    end
 devise_for :users
 resources :users, only: [:show] # ユーザーマイページへのルーティング
 
 root 'tweets#index'
 patch 'tweets/:id' => 'tweets#update'
 delete 'tweets/:id' => 'tweets#destroy' 
end
