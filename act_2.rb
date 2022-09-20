# Constraints: 
# For item 1 — use each; don’t use include?
# For item 4 — use each (then try experimenting on filter or select)

# Problem no. 1
# We have given you an array and a number. Write a program that checks to see if the number appears in the array.

arr = [1,3,5,7,9,11]
number = 0

checker = false
arr.each do |num|
    if number == num
        checker = true
        break
    end
end

puts checker

# Problem no. 2
# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Please input a number between 0 - 100:"
userNum = gets.chomp.to_i

if userNum >= 0 && userNum <= 50
    puts "Your number is between 0 and 50!"
elsif userNum >= 51  && userNum <= 100
    puts "Your number is between 51 and 100!"
elsif userNum > 100
    puts "Your number is above 100!"
elsif userNum < 0
    puts "That's a negative number!"
end
