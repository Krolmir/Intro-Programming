#While loop that takes input and only stops when Stop is inputed
str = ""
str_sum = ""

while str != "STOP"
  puts "Type STOP to end loop"
  str = gets.chomp.to_s
  str_sum = str_sum + " " + str 
end

puts str_sum