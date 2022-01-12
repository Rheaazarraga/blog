# A controller is a class that is defined to inherit from ApplicationController. Methods defined in this class will become the actions for this controller. These actions will perform CRUD operations on the articles within our system

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

    def update
      @article = Article.find(params[:id])

      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
  end
