#All caps method with conditions of 10 characters minimum for it to work

def caps_up(str)
  if str.length >= 11
    str.upcase
  else
    return str
  end
end

puts "Please enter some text!!"
puts caps_up(gets.chomp)

