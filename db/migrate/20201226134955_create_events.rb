class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :location
      t.text :description
      t.datetime :event_datetime

      t.timestamps
    end
  end
end
