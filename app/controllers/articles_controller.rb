class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all.order('created_at DESC')
    @categories = Category.all
  end

  def new
    @article = Article.new
    @article.articles_categories.build
    @categories = Category.all.map { |category| [category.name, category.id] }
  end

  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      redirect_to @article
    else
      @categories = Category.all.map { |category| [category.name, category.id] }

      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
    @article.punch(request)
  end

  private

  def article_params
    params.require(:article).permit(:author_id, :image, :views, :title, :text,
                                    articles_categories_attributes: [:category_id])
  end
end
