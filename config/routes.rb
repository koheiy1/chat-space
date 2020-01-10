Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :users, only: [:index, :edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do# グループ機能のルーティングを定義
    resources :messages, only: [:index, :create] # メッセージ送信機能の実装に必要なルーティングを追加
  end 

end
