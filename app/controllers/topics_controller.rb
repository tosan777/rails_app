class TopicsController < ApplicationController
  # topics/indexへのアクセスをここで受け取るので、DBのトピック一覧を取得し、ビューに渡す
  def index
    # topicsテーブルの中身をTopic.allで取得
    # テーブル名 = モデル名.all
    @topics = Topic.all
  end

  def show
  end
end
