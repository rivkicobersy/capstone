class SearchRecipesController < ApplicationController
  def index
    response = HTTP.get("https://api.edamam.com/api/recipes/v2?type=any&q=#{params[:q]}&app_id=#{Rails.application.credentials.food_app_id}&app_key=#{Rails.application.credentials.food_app_api}")
    data = response.parse
    recipes = data["hits"]
    render json: recipes
  end
end
