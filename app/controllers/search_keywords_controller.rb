class SearchKeywordsController < ApplicationController
  def index
  end

  def show
    client = Genius::Api::Client.new
    @results = client.genius_search(params[:id])
  end

  private
end
