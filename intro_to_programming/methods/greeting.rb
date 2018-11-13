#Program that prints a greeting message after asking a user to input their name 
def greeting(name)
  puts "Welcome #{name} to my greeting program!"
end

puts "Please enter your name:"
n = gets.chomp
greeting(n)