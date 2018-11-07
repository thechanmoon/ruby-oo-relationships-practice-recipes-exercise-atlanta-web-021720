require_relative '../config/environment.rb'

flour = Ingredient.new("Flour")
egg = Ingredient.new("Egg")
milk = Ingredient.new("Milk")
cheese = Ingredient.new("Cheese")
pepper = Ingredient.new("Pepper")
lettuce = Ingredient.new("Lettuce")
dressing = Ingredient.new("Dressing")
carrot = Ingredient.new("Carrot")
blueberry = Ingredient.new("Blueberry")

brit = User.new("Brit")
emily = User.new("Emily")

pancake = Recipe.new("Pancake")
pancake.add_ingredients([flour, egg, milk])
omelette = Recipe.new("Omelette")
omelette.add_ingredients([egg, milk, cheese, pepper])
salad = Recipe.new("Salad")
salad.add_ingredients([lettuce, cheese, pepper, dressing])
carrot_with_dressing = Recipe.new("Carrot with dressing")
carrot_with_dressing.add_ingredients([carrot, dressing])

brit.add_recipe_card(pancake, "2018-11-28", 100)
brit.add_recipe_card(omelette, "2018-11-29", 90)
brit.add_recipe_card(salad, "2018-11-29", 95)
brit.add_recipe_card(carrot_with_dressing, "2018-11-30", 80)
emily.add_recipe_card(omelette, "2018-11-30", 99)

binding.pry