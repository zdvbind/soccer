class Game < ApplicationRecord
  has_many :achievements_earnings
  has_many :team_games
  has_many :teams, through: :team_games

  validates :number, presence: true
end
