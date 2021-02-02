class ArticlesController < ApplicationController
  before_action :authenticate_user!
def index
@articles = Article.all.order('created_at DESC')
end

def new
@article = Article.new
	end



def create  
@article = current_user.created_articles.build(article_params)

if @article.save
	redirect_to @article
	 flash[:success] = 'Event was created successfully!'
else
	flash[:danger] = "Event wasn't created! Try again!"
	render 'new'
end

end

def show
@article = Article.find(params[:id])
end

# def update
# @article = Article.find(params[:id])
# 	end

private

def article_params
params.require(:article).permit(:author_id, :image, :title, :text)
end

end
