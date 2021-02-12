class Category < ApplicationRecord

has_many :articles_categories
has_many :articles, through: :articles_categories
validates_presence_of :name



end