# Write a method that returns the next to last word in the String passed to it
# as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

def penultimate(str)
  arr = str.split

  if arr.length % 2 == 1
    arr[(arr.length / 2.to_f).floor]
  else
    arr[(arr.length / 2) - 1] + ' ' + arr[(arr.length / 2)]
  end
end

p penultimate('last word')
p penultimate('Launch School is great!')
p penultimate('Launch is great!')
p penultimate('Launch test this is great!')
p penultimate('Launch School is fout us to do great!')
