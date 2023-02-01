class AchievementsEarning < ApplicationRecord
  belongs_to :player
  belongs_to :achievement
  belongs_to :game

  validates :player_id, uniqueness: { scope: %i[achievement_id game_id] }
end
