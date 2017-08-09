class ArticlesController < ApplicationController
  before_action :new, only: :create
  load_and_authorize_resource
  #load_and_authorize_resource except: [:create]

  def index
    @title = 'CRUD Articles'
    #@articles = Article.all
    @filterrific = initialize_filterrific(
        Article,
        params[:filterrific]
    ) or return
    @articles = @filterrific.find.page(params[:page]).per(params[:cantd])

    respond_to do |format|
      format.html
      format.js
      format.csv { send_data @articles.to_csv }
      format.xls
    end


  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end



end
