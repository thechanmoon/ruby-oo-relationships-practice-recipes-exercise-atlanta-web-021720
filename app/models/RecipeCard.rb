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
# 5.times do
# r = RecipeCard.new("02/24/20202", 0.3, u, "good recipe")
# end
# u.add_recipe_card