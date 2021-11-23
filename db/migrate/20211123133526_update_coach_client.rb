class UpdateCoachClient < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:bookings, :user, index: true, foreign_key: true)
    add_reference(:bookings, :client, index: true, foreign_key: {to_table: :users})

    remove_reference(:sport_classes, :user, index: true, foreign_key: true)
    add_reference(:sport_classes, :coach, index: true, foreign_key: {to_table: :users})
  end
end
