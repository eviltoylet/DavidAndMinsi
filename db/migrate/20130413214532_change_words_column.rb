class ChangeWordsColumn < ActiveRecord::Migration
  def up
    change_column :users, :words, :text, :limit => 2.megabytes
  end

  def down
  end
end
