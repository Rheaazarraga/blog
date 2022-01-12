# the Comments controller
# standard order CRUD actions in controllers are: index, show, new, edit, create, update, and destroy. 
class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
  # each request for a comment has to keep track of the article to which the comment is attached - uses the find method of the Article model to get the article in question.
    @comment = article.comments.create(comment_params)
  # creates and saves the comment, and automatically links the comment so that it belongs to that particular article
    redirect_to article_path(@article)
  # once the comment is created, the user is sent back to the original article with the above path
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
