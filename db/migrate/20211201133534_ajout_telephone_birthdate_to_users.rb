class AjoutTelephoneBirthdateToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :telephone, :string
    add_column :users, :birth_date, :string
  end
end
