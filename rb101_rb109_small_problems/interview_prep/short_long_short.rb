=begin

input : 2 strings
output : string

steps:

1: output the strings
2: initialize 2 variables; short_str, long_str
3: check the length of the strings and assign to the proper variables
4: output string with format shortlongshort

=end

def short_long_short(str1, str2)
  case str1.length <=> str2.length
  when 1
    str2 + str1 + str2
  when -1
    str1 + str2 + str1
  when 0
    "Clearly the strings were the same length!"
  end
end

p short_long_short('abc', 'defgh') # == "abcdefghabc"
p short_long_short('abcde', 'fgh') # == "fghabcdefgh"
p short_long_short('', 'xyz') # == "xyz"