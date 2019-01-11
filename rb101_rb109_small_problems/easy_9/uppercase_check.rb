# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

def uppercase?(str)
  is_true = true
  str.each_char do |char|
    if char =~ /[[:alpha:]]/
      is_true = false if char == char.downcase
    end
  end
  
  is_true
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true