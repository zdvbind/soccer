class Achievement < ApplicationRecord
  has_many :achievements_earnings
  has_many :players, through: :achievements_earnings

  validates :title, presence: true
end
