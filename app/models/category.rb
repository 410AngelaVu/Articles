class Category < ApplicationRecord

has_many :articles_categories, foreign_key: 'category_id', class_name: 'ArticlesCategory'
has_many :articles, through: :articles_categories
validates_presence_of :name
end
