# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Key notes

# We are mutating the initial array

def reverse!(array)
  length = array.length
  temp = []
  temp2 = []
  
  length.times do
    temp.push(array.pop)
  end

  length.times do
    temp2.push(temp.pop)
  end

  length.times do
    array.push(temp2.pop)
  end
  array
end

list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id
p list.object_id
p result.object_id

list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
p reverse!(list) # => []
p list == []
