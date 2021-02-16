require 'rails_helper'

RSpec.describe User, type: :model do
	current_user = User.first_or_create!(email: 'katja@example.com', password: 'password', password_confirmation: 'password')
 describe "associations" do
  	 it { should have_many(:articles) }
  end

   describe "associations" do
  	 it { should have_many(:likes) }
  end

  describe "validations" do
  	  it { should validate_presence_of(:name) }
  end

   describe "validations" do
  	  it { should validate_presence_of(:username) }
  end
end
