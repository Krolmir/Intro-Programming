=begin
input:  Integer > 0 
        Sum or product
output: either sum or product of 1 - Integer based on user selection

Steps: 

1: create some input messages
2: input validation
3: 
4: turn our range into an array based on user input number and 1
5: itterate through the array using the different scenarios
=end

puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

loop do
  if number >= 1
    break
  else
    puts "Please enter a valid integer (graeter than 0):"
    number = gets.chomp.to_i
  end
end

puts "Enter 's' to computer the sum, 'p' to compute the product."
operation = gets.chomp.downcase

loop do
  if operation == 's' || operation == 'p'
    break
  else
    puts "Invalid input. Please enter a valid selection: ('s' for sum or 'p' for"\
         " product)"
    operation = gets.chomp.downcase     
  end
end

num_range = (1..number).to_a

if operation == 's'
  result = num_range.reduce(:+)
  puts "The Sum of the integers between 1 and #{number} is #{result}"
else
  result = num_range.reduce(:*)
  puts "The Product of the integers between 1 and #{number} is #{result}"
end
