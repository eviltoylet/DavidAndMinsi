class DropRsvpTable < ActiveRecord::Migration
  def up
    drop_table :rsvp
  end

  def down
  end
end
