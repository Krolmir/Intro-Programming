# ddaaiillyy ddoouubbllee
# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

# turn string into an array with split, then compare each letter with the next
# using the astronaut operator, if it !=0 then return the character to a new
# string so we dont screw up the itterating

def crunch(string)
  result = ''
  counter = 0

  string.split('').select do |char|
    result << char if (char <=> string[counter + 1]) != 0
    counter += 1
  end
  p result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
