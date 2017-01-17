class CreateClassAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table :class_attendees do |t|
      t.string :name
      t.timestamp :create_at
      t.string :ip_address

      t.timestamps
    end
  end
end
