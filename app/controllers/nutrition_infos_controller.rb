class NutritionInfosController < ApplicationController
  def index
    client = Edamam::Api::Client.new
    @information = client.user_repositories(params[:ing])
  end

  def show
    client = Edamam::Api::Client.new
    @information = client.user_repositories(params[:id])
  end
end

