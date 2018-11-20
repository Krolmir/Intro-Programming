Password = "SecreT"
loop do
  p ">> Please enter your password:"
  input = gets.chomp
  if input == Password
    p "Welcome"
    break
  end
  p ">> Incorrect Password!"
end
