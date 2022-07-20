class SongsController < ApplicationController
  def show
    client = Genius::Api::Client.new
    @songs = client.song_search(params[:id])
  end
end
