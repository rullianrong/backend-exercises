# Given an integral number, determine if it's a square number.

def get_digital_root(number) 
    sum = 0
    number.digits.each do |digit| 
        sum += digit
    end
    if sum.to_s.length != 1
        get_digital_root(sum)
    else
        sum
    end
end

puts "Enter a number to check if it's a perfect square:"
number = gets.chomp

if [1,4,7,9].include? get_digital_root(number.to_i)
    puts "This number is a perfect square" 
else
    puts "Sorry, but this is not a perfect square"
end