class SearchKeywordsController < ApplicationController
  def index
  end

  def show
    client = Genius::Api::Client.new
    @results = client.artist_search(params[:id])
    @songs = client.artist_song_search(params[:id])
  end

end
