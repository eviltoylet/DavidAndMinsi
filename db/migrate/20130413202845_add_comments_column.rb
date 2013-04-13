class AddCommentsColumn < ActiveRecord::Migration
  def up
    add_column :users, :comments, :text
  end

  def down
  end
end
