#Asks a user how old they are and then tells them how old they will be in 10, 20 , 30 and 40 years.
puts "Please enter your age: "
age = gets.chomp.to_i

age_10 = age + 10
age_20 = age + 20
age_30 = age + 30
age_40 = age + 40

puts "You will be #{age_10} in 10 years, #{age_20} in 20 years, #{age_30} in 30 years and #{age_40} in 40 years"