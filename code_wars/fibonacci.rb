# Problem: Create a more efficnet version of the fibbonacci method.
# Somehow turn fibonacci(n-2) into something that doesnt need to call the method
# Steps:
# - Create an array that stors the values of fibonaaci - 2
# - Initialize an temp_arr
# - temp_arr << 1

def fibonacci(n)
  return n if (0..1).include? n
  temp_arr = []
  temp_arr << fibonacci(n - 1)
  temp_arr << fibonacci(n - 2)
  fibonacci(n - 1) + fibonacci(n - 2)
  p temp_arr
end


p fibonacci(9) #== 12586269025
# fibonacci(60) == 1548008755920
# fibonacci(70) == 190392490709135
