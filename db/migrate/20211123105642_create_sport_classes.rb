class CreateSportClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :sport_classes do |t|
      t.string :name
      t.text :description
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
