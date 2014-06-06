class BookmarkedArticlesController < ApplicationController
  # GET /bookmarked_articles
  # GET /bookmarked_articles.json
  def index
    @bookmarked_articles = BookmarkedArticle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookmarked_articles }
    end
  end

  # GET /bookmarked_articles/1
  # GET /bookmarked_articles/1.json
  def show
    @bookmarked_article = BookmarkedArticle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookmarked_article }
    end
  end

  # GET /bookmarked_articles/new
  # GET /bookmarked_articles/new.json
  def new
    @bookmarked_article = BookmarkedArticle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookmarked_article }
    end
  end

  # GET /bookmarked_articles/1/edit
  def edit
    @bookmarked_article = BookmarkedArticle.find(params[:id])
  end

  # POST /bookmarked_articles
  # POST /bookmarked_articles.json
  def create
    @bookmarked_article = BookmarkedArticle.new(params[:bookmarked_article])

    respond_to do |format|
      if @bookmarked_article.save
        format.html { redirect_to @bookmarked_article, notice: 'Bookmarked article was successfully created.' }
        format.json { render json: @bookmarked_article, status: :created, location: @bookmarked_article }
      else
        format.html { render action: "new" }
        format.json { render json: @bookmarked_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookmarked_articles/1
  # PUT /bookmarked_articles/1.json
  def update
    @bookmarked_article = BookmarkedArticle.find(params[:id])

    respond_to do |format|
      if @bookmarked_article.update_attributes(params[:bookmarked_article])
        format.html { redirect_to @bookmarked_article, notice: 'Bookmarked article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookmarked_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmarked_articles/1
  # DELETE /bookmarked_articles/1.json
  def destroy
    @bookmarked_article = BookmarkedArticle.find(params[:id])
    @bookmarked_article.destroy

    respond_to do |format|
      format.html { redirect_to bookmarked_articles_url }
      format.json { head :no_content }
    end
  end
end
