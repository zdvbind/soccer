class Player < ApplicationRecord
  COUNT_LAST_GAME = 5
  belongs_to :team

  has_many :achievements_earnings, dependent: :destroy
  has_many :achievements, through: :achievements_earnings

  validates :name, presence: true

  def set_achievement(achievement, game)
    achievements_earnings.create(player_id: id, achievement_id: achievement.id, game_id: game.id)
  end

  def earned_achievement?(achievement)
    last_5_games_id = team.games.order(id: :desc).limit(COUNT_LAST_GAME).pluck(:id)
    achievements_earnings.where(achievement_id: achievement.id).where(game_id: last_5_games_id).present?
  end
end
