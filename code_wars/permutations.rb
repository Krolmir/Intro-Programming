def swap(first, second)
  first, second = second, first
end

def permutations(string)
  result_arr = [string]
  return result_arr if string.size == 1
  
  string.each_char do |char|

    counter = 0
    string.size.times do
      
      temp = string.clone
      temp = swap(temp[char], temp[counter])
      result_arr << temp
      counter += 1
    end
  end

  # result_arr << string[1] + string[0]
    
  
  result_arr.uniq
end

# Examples:

p permutations('a') # ['a']
p permutations('ab') # ['ab', 'ba']
p permutations('hey')
p permutations('aabb') # ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']