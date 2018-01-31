class Recipe < ActiveRecord::Base
  validates :name, presence: true
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  accepts_nested_attributes_for :ingredients

  def recipe_name=(name)
    self.name = name
  end

  def recipe_name
    self.name
  end
end
