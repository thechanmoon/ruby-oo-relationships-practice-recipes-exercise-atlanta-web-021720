class RecipeCard

    attr_reader :date, :rating, :user, :recipe
    @@all = []

    def initialize(date, rating, user, recipe)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe 
        @@all << self
    end

    def self.all
        @@all
    end
end

# u= User.new("Ian")
# i = Ingredient.new("Soy")
# r = Recipe.new("Best Recipe")

# al = Allergy.new(u,i)
# rc = RecipeCard.new("good recipe_2", 0.3,u,r)
# reig = RecipeIngredient.new(r,i)