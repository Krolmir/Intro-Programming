=begin

input: array of numbers
output: array of running total

steps:
1: define a method output original array
   - initialize a running total variable
2: itterate through the array - map i think
    - track the running total
3: return the new array


=end

def running_total(arr)
  new_arr = []
  arr.each.with_index do |_,idx|
    new_arr << arr[0..idx].inject(:+) 
  end

  new_arr
end


p running_total([2, 5, 13]) # == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
p running_total([3]) # == [3]
p running_total([]) # == []