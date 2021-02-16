class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: :article_id }
  belongs_to :article
  belongs_to :user

  scope :popular, -> { select('article_id, count(article_id) as count').group(:article_id).order('count desc') }
end
