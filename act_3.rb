class Person
    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
    end

    def name
        @name
    end

    def age
        @age
    end

    def gender
        @gender
    end

    def greet
        puts "Hi!"
    end
end