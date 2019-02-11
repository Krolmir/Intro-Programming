=begin

input: string
output: string

steps:
1: define a method output the intial string
2: probably use gsub with some regex
  - ......?
3: return new stirng

=end

# def cleanup(str)
#   str.gsub!(/\W/, ' ').gsub!(/\s+/, ' ')
# end

def cleanup(str)
  arr = str.split('')
  new_arr = []
  
  arr.each do |char|
    if ('a'..'z').include?(char)
      new_arr << char
    else
      new_arr << ' '
    end
  end
  p new_arr.join.squeeze
end

cleanup("---what's my +*& line?") # == ' what s my line '