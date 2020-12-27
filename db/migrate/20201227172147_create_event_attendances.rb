class CreateEventAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :event_attendances, id: false do |t|
      t.integer :attendee_id, null: false
      t.integer :event_id, null: false

      t.timestamps
    end
  end
end
