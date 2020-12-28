class AddStatusToEventAttendances < ActiveRecord::Migration[6.0]
  def change
    add_column :event_attendances, :status, :integer
  end
end
