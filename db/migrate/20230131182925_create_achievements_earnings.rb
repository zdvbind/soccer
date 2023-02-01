class CreateAchievementsEarnings < ActiveRecord::Migration[6.1]
  def change
    create_table :achievements_earnings do |t|
      t.references :player, null: false, foreign_key: true
      t.references :achievement, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.index %i[player_id achievement_id game_id], unique: true, name: 'pag_index'

      t.timestamps
    end
  end
end
