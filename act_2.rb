# Constraints: 
# For item 1 — use each; don’t use include?
# For item 4 — use each (then try experimenting on filter or select)

# Problem no. 1
# We have given you an array and a number. Write a program that checks to see if the number appears in the array.

arr = [1,3,5,7,9,11]
number = 3

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
user_num = gets.chomp.to_i

if user_num >= 0 && user_num <= 50
    puts "Your number is between 0 and 50!"
elsif user_num >= 51  && user_num <= 100
    puts "Your number is between 51 and 100!"
elsif user_num > 100
    puts "Your number is above 100!"
elsif user_num < 0
    puts "That's a negative number!"
end

# Problem no. 3
# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get infor from the user.

user_input = ''

while user_input != "STOP"
    puts "Please let us know more about you or type 'STOP' to stop:"
    user_input = gets.chomp
end

# Problem no. 4
# We have given you an array. Write a program that checks to see if the number is divisible by 2 and store them into a new array.

arr = [6,3,1,8,4,2,10,65,102]

divisible_by_two = []

arr.each do |num|
    if num % 2 == 0
        divisible_by_two.push num
    end
end

puts divisible_by_two