class Category < ApplicationRecord

has_many :articles_categories
has_many :articles, through: :articles_categories
validates :name, presence: true, length: { minimum: 2 }



end