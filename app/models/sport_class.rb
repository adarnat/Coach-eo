class SportClass < ApplicationRecord
  belongs_to :coach, class_name: "User"
  has_many :time_slots

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true

end
