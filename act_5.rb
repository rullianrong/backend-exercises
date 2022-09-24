# Classes: Inheritance

class Confection
    def initialize(recipe_name)
        @recipe_name = recipe_name
    end

    def baking
        puts "Baking at 350 degrees for 25 minutes."
    end
end

class Cupcake < Confection
    def baking
         "#{super}Applying frosting."
    end
end

cupcake = Cupcake.new("cupcake")
banana_cake = Confection.new("banana cake")

puts cupcake.baking
puts banana_cake.baking
