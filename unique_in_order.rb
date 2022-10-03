def unique_in_order(iterable)
    char_array = iterable
    unique_in_order = []

    if iterable.is_a?(String)
      char_array = iterable.split('')
    end

    char_array.each_with_index do |char, index|
      if char != char_array[index+1] 
        unique_in_order << char
      end
    end

    unique_in_order
end

puts unique_in_order('AAAABBBCCDAABBB')