class CategoriesController < ApplicationController
# before_action :set_category
def index
 @categories = Category.all

   @articles = Article.all

end

# def new
# @category = Category.new
# @categories = Category.all
# 	end

# def create
# @category = current_user.categories.build(category_params)
# if @category.save
# 	redirect_to @category
# else
# 	render 'new'
# end
# end

def show
@category = Category.includes(:articles).find(params[:id])
	end



private

 # def set_category
 #      @category = Category.find(params[:id])
 #    end

def category_params
params.require(:category).permit(:name, :priority)
	end
end
