# A controller is a class that is defined to inherit from ApplicationController. Methods defined in this class will become the actions for this controller. These actions will perform CRUD operations on the articles within our system

class ArticlesController < ApplicationController
  def new
  end

  def create
    render plain: params[:article].inspect
  end
end
