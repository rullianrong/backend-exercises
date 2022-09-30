def is_isogram(string)
    lower_string = string.downcase.split('') #converts the string to lowercase and into an iterable array
    lower_string.each_with_index do |char, index| 
        i = index + 1 # initial index of the element that will be compared to char
        while i < lower_string.length 
            if char == lower_string[i] 
                return false 
            end
            i += 1
        end
    end
    return true
end


puts is_isogram("moOse")