# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(number)
  p number.to_s.reverse.to_i == number
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(0220) == true
palindromic_number?(5) == true