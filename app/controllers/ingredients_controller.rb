class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    #raise params.inspect
    @ingredient = Ingredient.new(ingredient_params)
    if Ingredient.all.find_by(name:ingredient_params[:ingredient_name]).blank?
      @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
      redirect_to ingredients_path
    end
  end

  private
  def ingredient_params
    params.require[:ingredient].permit[:ingredient_name]
  end

end
