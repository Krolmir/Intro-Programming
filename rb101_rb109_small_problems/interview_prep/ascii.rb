=begin

input: string
output: returns ascii string value - number

steps: 
1: define a method and print the string
2: break up the string into an array of words,
3: itterate through each word and then itterate through each character and take
   a running sum of the ascii value


=end

def ascii_value(string)
  total = 0
  string.split('').each { |char| total += char.ord }
  total
end

p ascii_value('Four score') # == 984
p ascii_value('Launch School') # == 1251
p ascii_value('a') # == 97
p ascii_value('') # == 0