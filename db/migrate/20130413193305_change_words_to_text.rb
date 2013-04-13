class ChangeWordsToText < ActiveRecord::Migration
  def up
    change_column :users, :words, :text
  end

  def down
  end
end
