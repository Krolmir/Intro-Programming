# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.
# I.E * Integer() .to_i

def check_which_num(mini_string)
  case mini_string
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  when '0' then 0
  end
end

def string_to_integer(string)
  result = string.split('').each_with_object([]) do |n, arr|
    arr << check_which_num(n)
  end
  result.join.to_i
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,
  'f' => 15
}

def hexadecimal_to_integer(string)
  digits = string.downcase.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end

p hexadecimal_to_integer('4D9f') == 19_871
