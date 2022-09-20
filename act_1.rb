# activity no. 1
# Use the each method of Array to iterate over [1,2,3,4,5,6,7,8,9,10], and print out each value.
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |n| puts "Number: #{n}" }

# activity no. 2
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}. Get the value of key :b. Add key:value pair {e:5} to this hash
h = {a:1, b:2, c:3, d:4}
puts h[:b]
puts h[:e] = 5
puts h

# activity no. 3
# Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.
contact_data = [["john@email.com", "123 Main st.", "555-123-4567"], ["avion@email.com", "484 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

contact_data.each do |data|
    name = data[0].split('@')
    contacts.each_key do |contact|
        if contact.downcase.include? name[0]
            contacts["#{contact}"] = data
            break
        end
    end
end

puts contacts

# activity no. 4
# Write a program called age.rb that asks the user how old they are and then tells them how old they will be in 10, 20, 30, and 40, years. 
puts "How old are you?"
age = gets.chomp

puts "In 10 years you will be: #{age.to_i + 10}"
puts "In 10 years you will be: #{age.to_i + 20}"
puts "In 10 years you will be: #{age.to_i + 30}"
puts "In 10 years you will be: #{age.to_i + 40}"