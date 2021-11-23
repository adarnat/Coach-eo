class CreateTimeSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :time_slots do |t|
      t.string :level
      t.integer :group_size
      t.float :price
      t.date :start_at
      t.string :time
      t.datetime :end_at
      t.references :sport_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
