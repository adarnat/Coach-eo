class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sport_classes, foreign_key: "coach_id"
  has_many :client_bookings, foreign_key: "client_id", class_name: 'Booking'
  has_many :time_slots, through: :sport_classes
  has_many :bookings, through: :time_slots # coach bookings
  has_many :clients, -> { distinct }, through: :bookings

  def is_coach?
    sport_classes.any?
  end

  def is_client?
    !sport_classes.any?
  end
end
