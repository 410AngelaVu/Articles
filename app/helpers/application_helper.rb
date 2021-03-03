module ApplicationHelper
  def like_or_dislike_btn(article)
    like = Like.find_by(article: article, user: current_user)
    if like
      link_to('Dislike!', article_like_path(id: like.id, article_id: article.id), method: :delete)
    else
      link_to('Like!', article_likes_path(article_id: article.id), method: :post)
    end
  end

  def display_flash_messages
    # rubocop:disable Style/GuardClause
    unless flash[:notice].nil?
      concat content_tag(:p, notice,
                         class: 'alert alert-warning alert-dismissible fade show')
    end
    # rubocop:enable Style/GuardClause
  end
end
