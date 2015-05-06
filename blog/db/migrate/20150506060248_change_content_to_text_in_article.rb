class ChangeContentToTextInArticle < ActiveRecord::Migration
  def change
    remove_column :articles, :content, :string
    add_column :articles, :text, :string
  end
end
