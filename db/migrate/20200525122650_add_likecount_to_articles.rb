class AddLikecountToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :like_count, :integer
  end
end
