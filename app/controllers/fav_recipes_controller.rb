class FavRecipesController < ApplicationController
  def index
    fav_recipes = FavRecipe.all
    render json: fav_recipes.as_json
  end

  def show
    fav_recipe = FavRecipe.find_by(id: params[:id])
    render json: fav_recipe.as_json
  end

  def create
    @fav_recipe = FavRecipe.find_by(uri: params[:uri])
    if !@fav_recipe
      @fav_recipe = FavRecipe.create(
        uri: params[:uri],
        user_id: current_user.id,
        label: params[:label],
        url: params[:url],
        image: params[:image],
      )
    end
    render json: @fav_recipe.as_json
  end

  def destroy
    fav_recipe = FavRecipe.find_by(id: params[:id])
    fav_recipe.destroy
    render json: { message: "fav recipe destroyed" }
  end
end
