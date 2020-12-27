class RenameEventToAttendedEventColumnForEventAttendances < ActiveRecord::Migration[6.0]
  def change
    rename_column :event_attendances, :event_id, :attended_event_id
  end
end
