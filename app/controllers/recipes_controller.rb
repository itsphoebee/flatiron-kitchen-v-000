class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredient_ids[])
end
