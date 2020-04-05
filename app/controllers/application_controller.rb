class ApplicationController < ActionController::Base

  def index
    @articles = Article.order("create_at DESC")
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article was successfully created"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

end
