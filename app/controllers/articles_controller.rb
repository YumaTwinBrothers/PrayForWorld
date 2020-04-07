class ArticlesController < ApplicationController

  def index
    @articles = Article.order("create_at DESC")
  end

  def new
    @article = Article.new
    # json
  end

  # def show
  #   @article = Article.find(params[:id])
  # end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article was successfully created"
      redirect_to root_path
    else
      render 'new'
    end
    # json
  end

  private

  def article_params
    params.require(:article).permit(:username, :description, :country)
  end

end

# 恐らくjson形式でブラウザに返す
# Udemy教材(message me)とWEB上の情報で解決する
# 多分message_meと全く同じ機能でいいかな（ユーザーなしversion?かな）