require 'rails_helper'

RSpec.describe Achievement, type: :model do
  it { should have_many(:achievements_earnings) }
  it { should have_many(:players) }
  it { should validate_presence_of :title }
end
