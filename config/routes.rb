Rails.application.routes.draw do
  # ’topics/show/:id’へのアクセスは => tpicsコントローラのshowメソッドが受け取る。
  # topics_showという識別子を付与することで、プログラムからルーティングを特定できる
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  # topicを新規登録する際に使用するルーティング
  # 新規でデータを登録したいのでpostを使用する
  post 'topics/create' => 'topics#create'


  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ログイン後の画面設定
  root to: 'topics#index'


  # get 'URLの設定', to: '〇〇コントローラーの＃〇〇アクションを呼び出す'
  get 'tweets', to: 'tweets#index'
end
