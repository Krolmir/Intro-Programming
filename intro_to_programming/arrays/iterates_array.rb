# iterates over an array and builds a new array that is the result of incrementing each value in the original array by 2

arr = [1, 3, 4, 5, 13, 15, 21]
arr_new = []

arr.each { |v| arr_new.push(v + 2) }

p arr
p arr_new