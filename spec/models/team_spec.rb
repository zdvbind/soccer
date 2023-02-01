require 'rails_helper'

RSpec.describe Team, type: :model do
  it { should have_many(:players) }
  it { should have_many(:team_games) }
  it { should have_many(:games) }

  it { should validate_presence_of :name }
end
