class PantryItemsController < ApplicationController
  def index
    if current_user
      @pantry_items = current_user.pantry_items
      render template: "pantry_items/index"
    else
      render json: []
    end
  end

  def create
    @pantry_item = current_user.pantry_items.find_by(ingredient_id: params[:ingredient_id])
    if !@pantry_item
      @pantry_item = PantryItem.create(
        ingredient_id: params[:ingredient_id],
        user_id: current_user.id,
        amount: params[:amount],
      )
    end
    render template: "pantry_items/show"
  end

  def destroy
    @pantry_item = PantryItem.find_by(id: params[:id])
    @pantry_item.destroy
  end
end
