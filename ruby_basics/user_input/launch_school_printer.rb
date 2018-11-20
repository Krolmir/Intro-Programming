input = ""
loop do
  p ">> How many output lines do you want? Enter a number >= 3:"
  input = gets.chomp.to_i
  break if input > 2
  p ">> That is not enough lines." if input < 3
end

i = 0

while i < input
  p "Launch school is the best!"
  i += 1
end
