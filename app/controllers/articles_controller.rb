# A controller is a class that is defined to inherit from ApplicationController. Methods defined in this class will become the actions for this controller. These actions will perform CRUD operations on the articles within our system

class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, text)
    end
end
