class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if Ingredient.all.find_by(name:ingredient_params[:name]).blank?
      @ingredient.save
      redirect_to ingredient_path(@ingredient)
    end
  end

  private
  def ingredient_params
    params.require[:ingredient].permit[:name]
  end

end
