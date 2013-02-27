class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :user
      t.text :words

      t.timestamps
    end
  end
end
