class SearchRecipesController < ApplicationController
  def index
    query = ERB::Util.url_encode params[:q]
    pp query
    response = HTTP.get("https://api.edamam.com/api/recipes/v2?type=any&q=#{query}&app_id=#{Rails.application.credentials.food_app_id}&app_key=#{Rails.application.credentials.food_app_api}")
    data = response.parse
    recipes = data["hits"]
    render json: recipes
  end
end
