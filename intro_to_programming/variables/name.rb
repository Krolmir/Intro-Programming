#Asks user to enter name and prints out a greeting message
puts "Please enter your first name: "
first_name = gets.chomp
puts "Please enter your last name: "
last_name = gets.chomp

name = first_name + " " + last_name
puts "Good day #{name}!"

#Prints the users name 10 times
10.times { puts name}