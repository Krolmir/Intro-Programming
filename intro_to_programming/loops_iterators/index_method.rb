#Practice with the each_with_index method.  Iterating through an array

new_arr = ["cat", "dog", "turtle", "mouse", "tiger"]

new_arr.each_with_index { |value, index| puts "Index #{index} has a value of #{value}" }
