class Ingredient < ActiveRecord::Base
  validates :name, presence: true
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  def ingredient_name=(name)

  end

  def ingredient_name
    self.name
  end
end
