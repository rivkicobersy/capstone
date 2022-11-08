class IngredientsController < ApplicationController
  def index
    ingredients = Ingredient.all
    render json: ingredients.as_json
  end

  def show
    @ingredient = Ingredient.find_by(id: params[:id])
    render template: "ingredients/show"
  end

  def create
    ingredient = Ingredient.find_by(name: params[:name])
    if !ingredient
      ingredient = Ingredient.create(
        name: params[:name],
        image_url: params[:image_url],
      )
    end
    render json: ingredient.as_json
  end
end
