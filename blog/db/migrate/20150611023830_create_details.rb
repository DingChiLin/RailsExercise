class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :content
      t.integer :comment_id

      t.timestamps null: false
    end
  end
end
