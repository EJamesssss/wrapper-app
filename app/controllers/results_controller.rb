class ResultsController < ApplicationController
  def index
    client = Genius::Api::Client.new
    @results = client.genius_search(params[:id])

  end
end
