require 'rails_helper'

RSpec.describe Player, type: :model do
  let!(:team) { create(:team) }
  let!(:player) { create(:player, team: team) }
  let!(:achievement) { create(:achievement) }
  let!(:game) { create(:game) }
  let!(:team_game) { create(:team_game, team: team, game: game) }

  it { should belong_to :team }
  it { should have_many(:achievements_earnings).dependent(:destroy) }
  it { should have_many(:achievements) }

  it { should validate_presence_of :name }

  describe 'set_achievement' do
    before { player.set_achievement(achievement, game) }

    it { expect(player.achievements.first).to eq achievement }
    it { expect(achievement.players.first).to eq player }
  end
end
