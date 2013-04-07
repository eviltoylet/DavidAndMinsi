class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :custom_link
      t.string :first_name
      t.string :last_name
      t.string :guest_first_name
      t.string :guest_last_name
      t.boolean :attending
      t.string :words

      t.timestamps
    end
  end
end
