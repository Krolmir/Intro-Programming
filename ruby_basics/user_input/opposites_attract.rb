def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num_1 = ""
num_2 = ""

loop do
  loop do
    p ">> Please enter a positive or negative integer:"
    num_1 = gets.chomp
    
    break if valid_number?(num_1) == true
    p ">> Invalid input. Only non-zero integers are allowed."
  end    
  loop do  
    p ">> Please enter a positive or negative integer:"
    num_2 = gets.chomp
    
    break if valid_number?(num_2) == true
    
    p ">> Invalid input. Only non-zero integers are allowed."
  end
  
  num_1 = num_1.to_i
  num_2 = num_2.to_i
  
  if (num_1.negative? == true || num_2.negative? == true) && (num_1.positive? == true || num_2.positive? == true)
    sum = num_1 + num_2
    p ">> The sum of the two numbers you entered is #{sum}"
    break
  else
    p ">> Sorry. One integer must be positive, one must be negative"
    p ">> Please start over."
  end
end
