class TimeSlot < ApplicationRecord

  belongs_to :sport_class
  has_many :bookings

  validates :sport_class_id, presence: true
  validates :level, presence: true
  validates :group_size, presence: true
  validates :price, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true

  before_validation :set_end_at

  def price
    sport_class.price
  end

  private

  def set_end_at
    return if persisted?
    return unless sport_class && start_at

    self.end_at = start_at + sport_class.duration.minutes
  end

end
