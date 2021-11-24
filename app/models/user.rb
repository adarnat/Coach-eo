class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sport_classes, foreign_key: "coach_id"
  has_many :bookings, foreign_key: "client_id"

  def is_coach?
    sport_classes.any?
  end

  def is_client?
    !sport_classes.any?
  end
end
