class RemoveCreateatFromClassAttendees < ActiveRecord::Migration[5.0]
  def change
    remove_column :class_attendees, :create_at, :datetime
  end
end
