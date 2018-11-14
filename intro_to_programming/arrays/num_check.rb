#Checking to see if the number appears in the array

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |v|
  if v == number
    puts "The number 3 does appear in the array"
  end
end