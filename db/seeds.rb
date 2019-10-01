# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    recipe_1 = Recipe.create(title: 'bolognese')
    recipe_2 = Recipe.create(title: 'meatballs')
    recipe_3 = Recipe.create(title: 'curry')

    ingredient_1 = Ingredient.create(name: 'tomato', quantity: 2, recipe_id: recipe_1.id)
    ingredient_2 = Ingredient.create(name: 'lemon', quantity: 1, recipe_id: recipe_2.id)
    ingredient_1 = Ingredient.create(name: 'spice', quantity: 3, recipe_id: recipe_3.id)