class DropRsvpTable < ActiveRecord::Migration
  def up
    drop_table :rsvps
  end

  def down
  end
end
