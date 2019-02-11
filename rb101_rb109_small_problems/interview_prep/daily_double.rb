=begin

input: string
output: returns a new string

steps:
1: define a method and print out original string
2: initialize a new array variable and assign it to the string char_split
3: itterate over the array
   - some comparing logic
4: convert array to a string
5: return string

=end

def crunch(str)
  arr = str.chars
  new_arr = []

  arr.each_with_index do |char, idx|
    new_arr << char if char != arr[idx + 1]
  end

  p new_arr.join
end

p crunch('ddaaiillyy ddoouubbllee') # == 'daily double'
p crunch('4444abcabccba') # == '4abcabcba'
p crunch('ggggggggggggggg') # == 'g'
p crunch('a') # == 'a'
p crunch('') # == ''
