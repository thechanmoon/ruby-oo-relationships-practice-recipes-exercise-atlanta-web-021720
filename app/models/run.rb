require 'pry'
require 'faker'

require_relative "./Ingredient"
require_relative "./Recipe"
require_relative "./RecipeIngredient"
require_relative "./Allergy"
require_relative "./RecipeCard"
require_relative "./User"

puts "Creating seed data... one moment please."

u= User.new("Ian")
i = Ingredient.new(Faker::Food.ingredient)
r = Recipe.new("Best Recipe")

allergy = Allergy.new(u,i)
recipeCard = RecipeCard.new("good recipe_2", 0.3,u,r)
recipeIngredient = RecipeIngredient.new(r,i)

binding.pry