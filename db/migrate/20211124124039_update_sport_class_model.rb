class UpdateSportClassModel < ActiveRecord::Migration[6.0]
  def change
    add_column :sport_classes, :level, :string
    add_column :sport_classes, :group_size, :integer
    add_column :sport_classes, :price, :float
    add_column :sport_classes, :duration, :integer # (en minutes)
    add_column :sport_classes, :address1, :string
    add_column :sport_classes, :address2, :string
    add_column :sport_classes, :post_code, :string
    add_column :sport_classes, :town, :string
  end
end
