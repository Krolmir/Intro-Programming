# Build a program that asks a user for the length and width of a room in 
# meters and then displays the area of the room in both square meters and 
# square feet.

# Note: 1 square meter == 10.7639 square feet

def prompt(message)
  p "=> #{message}"
end

prompt "Please enter the length of the room in meters:"
length = gets.chomp.to_f
prompt "Please enter the width of the room in meters:"
width = gets.chomp.to_f

area = length * width
sqfeet = area * 10.7639

prompt "The area of the room is #{area} square meters (#{sqfeet} square feet)."
