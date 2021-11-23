class UpdateTimeSlotsModel < ActiveRecord::Migration[6.0]
  def change
    remove_column :time_slots, :time
    change_column :time_slots, :start_at, :datetime
  end
end
