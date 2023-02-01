# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
teams = Team.create!(
  [
    { name: 'Barcelona' },
    { name: 'Sevilla' }
  ]
)

players = Player.create!(
  [
    { name: 'Dmitry', team_id: teams.first.id },
    { name: 'Andrey', team_id: teams.first.id },
    { name: 'Bob', team_id: teams.first.id },
    { name: 'Alex', team_id: teams.second.id },
    { name: 'John', team_id: teams.second.id },
    { name: 'Stan', team_id: teams.second.id }
  ]
)

games = Game.create!(
  [
    { number: '1' },
    { number: '2' },
    { number: '3' },
    { number: '4' },
    { number: '5' },
    { number: '6' }
  ]
)

TeamGame.create!(
  [
    { team_id: teams.first.id, game_id: games.first.id },
    { team_id: teams.second.id, game_id: games.first.id },
    { team_id: teams.first.id, game_id: games.second.id },
    { team_id: teams.second.id, game_id: games.second.id },
    { team_id: teams.first.id, game_id: games.third.id },
    { team_id: teams.second.id, game_id: games.third.id },
    { team_id: teams.first.id, game_id: games[3].id },
    { team_id: teams.second.id, game_id: games[3].id },
    { team_id: teams.first.id, game_id: games[4].id },
    { team_id: teams.second.id, game_id: games[4].id },
    { team_id: teams.first.id, game_id: games[5].id },
    { team_id: teams.second.id, game_id: games[5].id }
  ]
)

achievements = Achievement.create!(
  [
    { title: 'пробежал 10+ км' },
    { title: 'сделал 70+ % точных передач' }
  ]
)

AchievementsEarning.create!(
  [
    { player_id: players.first.id, achievement_id: achievements.first.id, game_id: games.first.id },
    { player_id: players.third.id, achievement_id: achievements.second.id, game_id: games.first.id },
    { player_id: players.first.id, achievement_id: achievements.first.id, game_id: games.second.id },
    { player_id: players.first.id, achievement_id: achievements.first.id, game_id: games.third.id },
    { player_id: players.second.id, achievement_id: achievements.first.id, game_id: games.second.id },
    { player_id: players.second.id, achievement_id: achievements.second.id, game_id: games.second.id }
  ]
)

players[3].set_achievement(achievements.first, games.first)
players[3].set_achievement(achievements.first, games.second)
players[3].set_achievement(achievements.first, games.third)
players[3].set_achievement(achievements.second, games.first)
players[3].set_achievement(achievements.second, games.second)
players[3].set_achievement(achievements.second, games.third)
players[3].set_achievement(achievements.second, games.last)
