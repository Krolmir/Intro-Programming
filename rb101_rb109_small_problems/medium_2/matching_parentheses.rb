# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

def balanced?(str, p1, p2)
  total = 0

  str.split('').each do |char|
    if char == p1
      total += 1
    elsif char == p2
      total -= 1
    end

    break if total == -1
  end

  total.zero?
end

p balanced?('What (is) this?', '(', ')') == true
p balanced?('What is) this?', '(', ')') == false
p balanced?('What (is this?', '(', ')') == false
p balanced?('((What) (is this))?', '(', ')') == true
p balanced?('((What)) (is this))?', '(', ')') == false
p balanced?('Hey!', '(', ')') == true
p balanced?(')Hey!(', '(', ')') == false
p balanced?('What ((is))) up(', '(', ')') == false
