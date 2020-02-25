class Ingredient

    attr_reader :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def ingredient
        @ingredient
    end
    
    # def allergys
    #     Allergy.all.map { |allergy| allergy.ingredient.name}
    # end

    def self.most_common_allergen
        #  newArray = Allergy.all.map { |allergy| allergy.ingredient.name}
        #  newArray.max_by{|el|newArray.count(el)}
 
        newArray = Allergy.all.map { |allergy| allergy.ingredient}
        newArray.max_by{|el|newArray.count(el)}
    end
end
