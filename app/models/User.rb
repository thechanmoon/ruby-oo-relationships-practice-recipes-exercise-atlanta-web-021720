class User

    attr_reader :user

    @@all = []
    
    def initialize(user)
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select do |recipe_card| 
            recipe_card.user == self
        end
    end

    def recipes
        recipe_cards.map do |recipe_card|
            recipe_card.recipe
        end
    end

    def add_recipe_card(recipe,date,rating)
        RecipeCard.new(date, rating, self, recipe)
    end

    def declare_allergy(ingredient)
        Allergy.new(self,ingredient)
    end

    def allergens
        Allergy.all.select{|allergy| allergy.user == self }        
    end

    def recipes_sort
        recipe_cards.sort { |card| card.rating}
    end

    def top_three_recipes
        # recipes_sort.slice(0,3)
        recipes_sort.first(3)
    end

    def most_recent_recipe
        # recipe_cards[recipe_cards.length-1]
        recipe_cards.last
    end

    def safe_recipes
    
    end    
end