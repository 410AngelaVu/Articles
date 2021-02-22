class CategoriesController < ApplicationController
  before_action :authenticate_user!
 
  def index
    @categories = Category.all
     @articles = Article.all.order('created_at DESC')
  end

  def show
    @category = Category.includes(:articles).find(params[:id])
    @articles = Article.all.order('created_at DESC')
  end

  private

  def category_params
    params.require(:category).permit(:name, :priority)
  end
end
