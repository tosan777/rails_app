Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # topページの指定
  root 'top#index'

  # get 'URLの設定', to: '〇〇コントローラーの＃〇〇アクションを呼び出す'
  get 'tweets', to: 'tweets#index'
end
