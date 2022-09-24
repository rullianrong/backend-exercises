class Person
    attr_accessor :name, :age, :gender

    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
    end

    def greet
        puts "Hello"
    end
end


rullian = Person.new("Rullian Rong", 26, "Male")
puts rullian.greet