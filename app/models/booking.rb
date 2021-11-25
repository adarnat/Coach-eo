class Booking < ApplicationRecord
  belongs_to :time_slot
  belongs_to :client, class_name: "User"

  validates :time_slot_id, presence: true, uniqueness: { scope: :client_id }
  validates :client_id, presence: true
  validate :check_group_size

  def check_group_size
    errors.add(:time_slot, "Plus de place dispo") if time_slot.bookings.count >= time_slot.group_size
  end
end
