class AddDetailIdColumnToComment < ActiveRecord::Migration
  def change
    add_column :comments, :detail_id, :integer
  end
end
