require 'pry'

def largest(array)
  largest_str = array[0]
  array.each do |string|
    largest_str = string if string.length > largest_str.length
  end
  binding.pry
  largest_str.size
end

def smallest(array)
  smallest_str = array[0]
  array.each do |string|
    smallest_str = string if string.length < smallest_str.length
  end
  smallest_str.size
end

def mxdiflg(a1, a2)
  return -1 if a1.empty? || a2.empty?
  result = largest(a1) - smallest(a2)
  result2 = largest(a2) - smallest(a1)
  
  result > result2 ? result : result2 
end
  
  



s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt",
      "znnnnfqknaz", "qqquuhii", "dvvvwz"]
s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
p mxdiflg(s1, s2)