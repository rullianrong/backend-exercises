# activity no. 1
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |n| puts "Number: #{n}" }

# activity no. 2
h = {a:1, b:2, c:3, d:4}
puts h[:b]
puts h[:e] = 5
puts h

# activity no. 3
contact_data = [["john@email.com", "123 Main st.", "555-123-4567"], ["avion@email.com", "484 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

# activity no. 4
puts "How old are you?"
age = gets

puts "In 10 years you will be: #{age.to_i + 10}"
puts "In 10 years you will be: #{age.to_i + 20}"
puts "In 10 years you will be: #{age.to_i + 30}"
puts "In 10 years you will be: #{age.to_i + 40}"