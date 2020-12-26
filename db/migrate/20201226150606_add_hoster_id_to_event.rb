class AddHosterIdToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :hoster, foreign_key: { to_table: :users }
  end
end
