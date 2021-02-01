class ArticlesController < ApplicationController

def index
@articles = Article.all.order('created_at DESC')
end

def new
@article = Article.new
	end

def create  
@article = current_user.articles.build(article_params)
if @article.save
	redirect_to @article
else
	render 'new'
end

end

def update
@article = Article.find(params[:id])
	end

private

def article_params
params.require(:article).permit(:author_id, :image, :title, :text)
end

end
