#Program that will take 2 arguments and return the product of the two numbers
def multiply(x, y)
  x * y
end

puts "Please enter a number:"
num1 = gets.chomp.to_i
puts "Please enter another number:"
num2 = gets.chomp.to_i

total = multiply(num1, num2)
puts "The product of the 2 numbers you entered is #{total}"

