# Number range 0 - 100 with conditions

def num_finder(num)
  case
  when num <= 50
    puts "The number you selected is between 0 - 50"
  when num > 100
    puts "The number you selected is not in the range we asked for."
  when num <= 100 && num >= 51
    puts "The number you selected is between 51 - 100"
  end
end

puts "Please enter a number between 0 and 100"
num_finder(gets.chomp.to_i)
