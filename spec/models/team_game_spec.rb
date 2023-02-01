require 'rails_helper'

RSpec.describe TeamGame, type: :model do
  it { should belong_to(:team) }
  it { should belong_to(:game) }
end
