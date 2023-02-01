class Team < ApplicationRecord
  has_many :players
  has_many :team_games
  has_many :games, through: :team_games

  validates :name, presence: true

  def self.top_5_players_by_achievement(achievement)
    AchievementsEarning.where(achievement_id: achievement.id)
                       .group(:player_id)
                       .order('count_id desc')
                       .limit(5)
                       .count(:id)
  end

  def top_5_players_by_achievement(achievement)
    AchievementsEarning.joins("JOIN players ON players.id = player_id AND players.team_id = #{id}")
                       .where(achievement_id: achievement.id)
                       .group(:player_id)
                       .order('count_id desc')
                       .limit(5)
                       .count(:id)
  end
end
