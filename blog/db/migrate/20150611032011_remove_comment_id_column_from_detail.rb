class RemoveCommentIdColumnFromDetail < ActiveRecord::Migration
  def up
    remove_column :details, :comment_id
  end

  def down
    add_column :details, :comment_id, :integer
  end
end
