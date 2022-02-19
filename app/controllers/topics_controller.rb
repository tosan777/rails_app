class TopicsController < ApplicationController
  # topics/indexへのアクセスをここで受け取るので、DBのトピック一覧を取得し、ビューに渡す
  def index
    # テーブル名 = モデル名.all
    # 先頭の文字を大文字にするとモデルにアクセスできる
    # topicsテーブルの全ての中身を.allで取得
    @topics = Topic.all
    # モデルオブジェクトの生成
    @newTopic = Topic.new
  end

  # フォームから送られてきたデータを保存するためのアクション
  def create
    # モデルオブジェクトの生成
    # params[:topic] = topic新規登録フォームで送られてきた値を受け取る引数
    # permit(:title) = paramsのタイトルを保存できるように許可を出すメソッド
    @topic = Topic.new(params[:topic].permit(:title))
    # フォームから送られてきたデータを保存
    @topic.save
    # ボタンを押した際にルートバスにリダイレクト
    redirect_to root_path
  end

  # トピック一覧の該当箇所の削除ボタンを押したときのアクション
  def delete
    # Topic.find(params[:id]) = モデルと紐づいているデータベースのテーブルから、レコードを一つ取り出している
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to root_path
  end

  def show
  end
end
