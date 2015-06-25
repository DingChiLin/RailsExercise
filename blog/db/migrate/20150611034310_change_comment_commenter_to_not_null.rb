class ChangeCommentCommenterToNotNull < ActiveRecord::Migration
  def change
    change_column :comments, :commenter, :string, :null => false
  end
end
