require 'rails_helper'

RSpec.describe Game, type: :model do
  it { should have_many(:achievements_earnings) }
  it { should have_many(:team_games) }
  it { should have_many(:teams) }

  it { should validate_presence_of :number }
end
