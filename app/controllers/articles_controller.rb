class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
def index
# 	@categories = Category.all
# @articles = Article.all.order('created_at DESC')
# if params[:category_id]
#   @category = Category.find params[:category_id]
#   @articles = @category.articles
# else
#   @articles = Article.all.order('created_at DESC')
# end 
def index 
 if params[:category_id]
  @articles = Article.where("category_id = ?", params[:category_id])
 else
   @articles = Article.all
 end 
end
end

def new
@article = Article.new
@article.articles_categories.build
#@article.categories.build
#@categories = Category.all.map { |category| [category.name, category.id] }


	end



def create  
@article = current_user.articles.build(article_params)

if @article.save
	redirect_to @article
    else
     @categories = Category.all.map { |category| [category.name, category.id] }

     render 'new'
    end
#     if @article.save == false       
# 	@categories = Category.all.map{|c| [ c.name, c.id ] } 
# 	render 'new'
# 	else
# 	redirect_to @article    
# end

end

def show
@article = Article.find(params[:id])
end

# def update
# @article = Article.find(params[:id])
# 	end

private



def article_params
params.require(:article).permit(:author_id, :image, :title, :text, articles_categories_attributes: [:category_id])
end

end
