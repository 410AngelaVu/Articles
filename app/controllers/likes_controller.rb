class LikesController < ApplicationController

def create
@like = current_user.likes.new(article_id: params[:article_id])
if @like.save
	redirect_to article_path(params[:article_id]), notice: 'You liked this article'
else
	redirect_to article_path(params[:article_id]), notice: "You can't like this article"
end
end

def destroy
@like = Like.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
if @like.destroy
	redirect_to article_path(params[:article_id]), notice:'You dislike this article'
else
	redirect_to article_path(params[:article_id]), notice: 'You cannot dislike article that you did not like before.'
	end
end

end
