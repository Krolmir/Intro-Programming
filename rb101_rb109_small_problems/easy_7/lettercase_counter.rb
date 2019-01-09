# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

UPPERCASE = /[A-Z]/
LOWERCASE = /[a-z]/

def letter_case_count(str)
  count = 0
  new_hash = { lowercase: 0,
               uppercase: 0,
               neither: 0 }

  loop do
    break if count == str.length

    case str[count]
    when UPPERCASE
      new_hash[:uppercase] += 1
    when LOWERCASE
      new_hash[:lowercase] += 1
    else
      new_hash[:neither] += 1
    end

    count += 1
  end

  p new_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
