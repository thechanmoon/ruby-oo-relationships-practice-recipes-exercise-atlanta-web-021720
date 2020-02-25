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
            if(recipe_ingredient. ) do 
        end
    end

    def allergens

        ingredients.map do |ingredient|
            Allergy.all.select 
        end

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
end