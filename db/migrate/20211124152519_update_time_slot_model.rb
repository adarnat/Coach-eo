class UpdateTimeSlotModel < ActiveRecord::Migration[6.0]
  def change
    add_column :time_slots, :name, :string
    add_column :time_slots, :description, :text
    add_column :time_slots, :address1, :string
    add_column :time_slots, :address2, :string
    add_column :time_slots, :post_code, :string
    add_column :time_slots, :town, :string
  end
end
