def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num_1 = ""

loop do
  p ">> Please enter a number:"
  num_1 = gets.chomp
  if valid_number?(num_1) == true
    break
  else
    p ">> Invalid input. Only integers are allowed."
  end
end

num_2 = ""

loop do
  p ">> Please enter another number:"
  num_2 = gets.chomp
  if valid_number?(num_2) == true && num_2.to_i != 0 
    break
  elsif num_2.to_i == 0
    p ">> Invalid input. 0 is not allowed."
  else
    p "Invalid entry"
  end
end
result = num_1.to_i / num_2.to_i 
p ">> The result of dividing #{num_1} by #{num_2} is #{result}"