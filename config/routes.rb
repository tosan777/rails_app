Rails.application.routes.draw do
  # 掲示板のルーティング
  get 'topics/index'
  # ’topics/show/:id’へのアクセスは => tpicsコントローラのshowメソッドが受け取る。
  # tpics_showという識別子を付与することで、プログラムからルーティングを特定できる
  get 'topics/show/:id' => 'topics#show', as: :topics_show


  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # ログイン後の画面設定
  root to: 'topics#index'


  # get 'URLの設定', to: '〇〇コントローラーの＃〇〇アクションを呼び出す'
  get 'tweets', to: 'tweets#index'
end
