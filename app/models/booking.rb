class Booking < ApplicationRecord
  belongs_to :time_slot
  belongs_to :client, class_name: "User"

  validates :time_slot_id, presence: true, uniqueness: true
  validates :client_id, presence: true
end
