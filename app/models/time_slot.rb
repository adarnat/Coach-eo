class TimeSlot < ApplicationRecord
  belongs_to :sport_class
  has_many :bookings

  validates :sport_class_id, presence: true
  validates :level, presence: true
  validates :group_size, presence: true
  validates :price, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
end
