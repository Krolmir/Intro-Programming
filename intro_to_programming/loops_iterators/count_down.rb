#Counting down to 0 using recursion

def count_down(num)
  puts num
  num -= 1
  if num >= 1 
    count_down(num)
  end
end

puts "Please enter a number:"
count_down(gets.chomp.to_i)