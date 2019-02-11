# Problem: Write a method that returns an array with which lights are on
# You toggle all lights through on first pass
# second pass you toggle every second i.e 2, 4, 6, etc
# third pass you toggle 3, 6, 9 , 12 , etc
# Everypass you toggle the passnumber and all multiples of it.
# once you hit the input number repetitions you are done

# input: number
# output: array of numbers

# Steps:
# 1: define a method
# 2: intialize an array, with the length being num and the values all assigned
#    to true
# 3: loop num.times
# => itterate through arr and if n+1 %  arr[idx] then flip the switch

def lights(num)
  arr = Array.new(num, false)
  result_arr = []
  
  num.times do |n|
    num.times do |count|
      
      arr[count] = !arr[count] if (count + 1) % (n + 1) == 0
    end  
  end
  
  num.times do |count|
    if arr[count] == true
      result_arr << count + 1
    end
  end
  result_arr
end

p lights(5) # == [1, 4]
p lights(1000) # == [1, 4, 9]