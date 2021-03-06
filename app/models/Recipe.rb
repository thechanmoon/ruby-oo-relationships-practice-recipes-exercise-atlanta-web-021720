class Recipe

    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
    
    end

    def recipe_cards
        RecipeCard.all.select do |recipe_card|
            recipe_card.recipe == self
        end
    end

    def users
        recipe_cards.map do |recipe_card|
            recipe_card.user
        end
    end

    def recipe_ingredients
        RecipeIngredient.all.select do |recipe_ingredient|
            recipe_ingredient.recipe == self
        end
    end

    def ingredients
        recipe_ingredients.map do |recipe_ingredient|
            recipe_ingredient.ingredient
        end
    end

    def allergens

        retArray = []
        ingredients.each do |ingredient|
            Allergy.all.each do |allergy|
                if allergy.ingredient == ingredient
                    retArray << ingredient
                end    
            end 
        end
        retArray
        # Allergy.all.select do |allergy|
        #     /allergy.user == 
        # end

        # for(int = 0;i < length ;i++)
        # {

        # }

        # newArray = []
        # for i in 0...users.length
        #     newArray << ingredients.select { |ingredient|
        #         Allergy.all[i] == ingredient
        #     }
        # end
        # return newArray
        
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(self,ingredient)
        end
    end
end