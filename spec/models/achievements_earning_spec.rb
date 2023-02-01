require 'rails_helper'

RSpec.describe AchievementsEarning, type: :model do
  it { should belong_to(:player) }
  it { should belong_to(:achievement) }
  it { should belong_to(:game) }
end
