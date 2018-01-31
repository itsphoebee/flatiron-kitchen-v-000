class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    #raise params.inspect
    @recipe = Recipe.new(recipe_params)
    if @recipe.valid?
      @recipe.save
      redirect_to recipe_path(@recipe)
    else
      redirect_to recipes_path
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
  end

  def update

  end
  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredient_ids=>[])
  end
end
