class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    authorize @article
    @articles = Article.all
  end

  def show
    authorize @article
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    # authorize @article
    @article = Article.new(article_params)
    @article.user = current_user

    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
    @article = Article.find(:params[:id])
  end

  def update
    authorize @article
    @article = Article.find(:params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    authorize @article
    @article = Article.find(:params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :picture, :content)
  end
end
