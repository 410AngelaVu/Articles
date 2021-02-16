class CategoriesController < ApplicationController

def index
 @categories = Category.all

   @articles = Article.all.order('created_at DESC')

end

def show
@category = Category.includes(:articles).find(params[:id])
	end



private


def category_params
params.require(:category).permit(:name, :priority)
	end
end
