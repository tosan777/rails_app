class TopicsController < ApplicationController
  def index
    # topicsテーブルの中身をTopic.allで取得
    # テーブル名 = モデル名.all
    @topics = Topic.all
  end

  def show
  end
end
