class SearchKeywordsController < ApplicationController
  def index
  end

  def show
    client = Genius::Api::Client.new
    @results = client.artist_search(params[:id])
  end

end
