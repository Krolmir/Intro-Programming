def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num_1 = ""
num_2 = ""

loop do
  loop do
    p ">> Please enter a positive or negative integer:"
    num_1 = gets.chomp
    if valid_number?(num1) != true
      p ">> Invalid input." 
    
  p ">> Please enter a positive or negative integer:"
  num_2 = gets.chomp
  if 
  if (num_1.negative? == true || num_2.negative? == true) && (num_1.positive? == true || num_2.positive? == true)
  else
    p ">> Sorry. One integer must be positive, one must be negative"
    p ">> Please start over."
  end
end
