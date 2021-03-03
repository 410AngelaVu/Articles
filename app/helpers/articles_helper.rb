module ArticlesHelper
  def show_article_category(article)
    article.categories.each do |f|
      concat render partial: 'articles/show_art', locals: { f: f }
    end
  end
end
