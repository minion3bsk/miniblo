class AddAticlecolumnsToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :title, :string
    add_column :articles, :text, :text
  end
end
