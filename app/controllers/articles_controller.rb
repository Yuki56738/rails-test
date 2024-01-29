class ArticlesController < ApplicationController
  def index
    @articles =Article.all

  end
  def show
    @articles = Article.find(params[:id])
  end
  def new
    @articles = Article.new
  end
  def create
    @articles = Article.new(article_params)

    if @articles.save
      redirect_to @articles
    else
      render :new, status: :unprocessable_entity
    end
  end
  def destroy
    @articles = Article.find(params[:id])
    @articles.destroy
    redirect_to root_path, status: :see_other
  end
  def show
    @articles = Article.find(params[:id])
  end
  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

end
