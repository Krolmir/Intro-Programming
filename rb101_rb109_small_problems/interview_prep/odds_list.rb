=begin

input: array
output: odds of initial array as an aray

steps: 
1: define a method and print the original array
2: use an itterator, either map or select. and print out only odds
    - even index needs to be added to new arr
=end

def oddities(arr)
  arr.select.with_index { |_,i| i.even? }
end

def evens(arr)
  result = []
  count = 0

  loop do
    break if count == arr.length 
    result << arr[count] if count.odd?
    count += 1
  end
  result
end

p oddities([2, 3, 4, 5, 6]) # == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) # == [1, 3, 5]
p oddities(['abc', 'def']) # == ['abc']
p oddities([123]) # == [123]
p oddities([]) # == []

p evens([2, 3, 4, 5, 6])
p evens([1, 2, 3, 4, 5, 6]) 
p evens(['abc', 'def'])
p evens([123])
p evens([])