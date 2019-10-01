class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  # def ingredients_attributes=(ingredients)
  #   self.ingredients = Recipe.find_or_create_by(ingredients: recipe[:ingredients])
  # end 
end
