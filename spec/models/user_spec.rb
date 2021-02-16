require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:articles) }
  end

  describe 'associations' do
    it { should have_many(:likes) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'validations' do
    it { should validate_presence_of(:username) }
  end
end
