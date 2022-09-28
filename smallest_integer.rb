def get_smallest_int(numbers)
    smallest_num = numbers[0]

    numbers.each do |number| 
        if number < smallest_num
            smallest_num = number
        end
    end

    smallest_num
end

numbers = [104,23,46,-22]
puts get_smallest_int(numbers)