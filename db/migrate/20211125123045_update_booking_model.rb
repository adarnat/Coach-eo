class UpdateBookingModel < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :payment_received, :boolean
  end
end
