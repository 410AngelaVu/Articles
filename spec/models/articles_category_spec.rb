require 'rails_helper'

RSpec.describe ArticlesCategory, type: :model do
  describe "associations" do
  	 it { should belong_to(:category) }
  end
  
  describe "associations" do
  	 it { should belong_to(:article) }
  end

  describe "validations" do
    it { should validate_presence_of(:category_id) }
end

  describe "validations" do
    it { should validate_presence_of(:article_id) }
end

end
