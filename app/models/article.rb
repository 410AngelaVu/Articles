class Article < ApplicationRecord
 
belongs_to :author, foreign_key:'author_id', class_name: 'User'
has_many :articles_categories
has_and_belongs_to_many :categories, through: :articles_categories
accepts_nested_attributes_for :articles_categories 
  validates_presence_of :title, :text
end
