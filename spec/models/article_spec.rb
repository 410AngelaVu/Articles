require 'rails_helper'

RSpec.describe Article, type: :model do
  current_user = User.first_or_create!(email: 'katja@example.com', password: 'password',
                                       password_confirmation: 'password')

  it 'has a title' do
    article = Article.new(
      title: '',
      text: 'A valid text',
      author: current_user
    )
    expect(article).to_not be_valid
    article.title = 'A valid title'
    expect(article).to be_valid
  end

  it 'has a text' do
    article = Article.new(
      title: 'A valid title',
      text: '',
      author: current_user
    )
    expect(article).to_not be_valid
    article.text = 'A valid text'
    expect(article).to be_valid
  end

  it 'has a title at least 2 chars long' do
    article = Article.new(
      title: '',
      text: 'A valid text',
      author: current_user
    )
    expect(article).to_not be_valid
    article.title = 'ab'
    expect(article).to be_valid
  end

  it 'has a text between 2 and 5000 chars long' do
    article = Article.new(
      title: 'A valid title',
      text: '',
      author: current_user
    )
    expect(article).to_not be_valid
    article.text = 'ab'
    expect(article).to be_valid
  end

  describe 'associations' do
    it { should have_one_attached(:image) }
  end

  describe 'associations' do
    it { should accept_nested_attributes_for(:articles_categories) }
  end
  describe 'associations' do
    it { should have_and_belong_to_many(:categories) }
  end
end
