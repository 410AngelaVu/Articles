require 'rails_helper'

RSpec.describe Category, type: :model do
   current_user = User.first_or_create!(email: 'katja@example.com', password: 'password', password_confirmation: 'password')

  it 'has name' do
category = Category.new(
name: '',
priority: 1
	)
expect(category).to_not be_valid
category.name = 'A valid name'
expect(category).to be_valid
  end

it 'has name at least 2 chars long' do
category = Category.new(
name: '',
priority: 1
	)
expect(category).to_not be_valid
category.name = 'bb'
expect(category).to be_valid
end

describe "associations" do
     it { should have_many(:articles_categories) }
  end
describe "associations" do
     it { should have_many(:articles).through(:articles_categories) }
  end
end
