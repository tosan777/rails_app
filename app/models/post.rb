class Post < ApplicationRecord
  # このモデルを生成したコマンド
  # rails g model Post name body:text topic:references
  # topic:references = Postモデルのカラムをtopicテーブルに紐づけている
  belongs_to :topic
end
