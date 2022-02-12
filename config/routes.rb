Rails.application.routes.draw do
  # 掲示板のルーティング
  get 'topics/index'
  # tpics/show/:idへのアクセスは => topicsコントローラーのshowメソッドが受け取る。
  # topics_showでルーティング
  get 'topics/show/:id' => 'topics#show', as :topics_show


  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # topページの指定
  root to: 'home#index'

  # get 'URLの設定', to: '〇〇コントローラーの＃〇〇アクションを呼び出す'
  get 'tweets', to: 'tweets#index'
end
