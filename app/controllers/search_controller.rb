class SearchController < ApplicationController
  def search
    @all_articles = Article.all
    if params[:q].nil?
      @articles = []
    else
      @articles = Article.search params[:q]
    end
  end
end
