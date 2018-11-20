Username = "Krolmir"
Password = "SecreT"
loop do
  p ">> Please enter your username:"
  input_name = gets.chomp
  p ">> Please enter your password:"
  input_password = gets.chomp
  if input_name == Username && input_password == Password
    p "Welcome"
    break
  end
  p ">> Authorization Failed!"
end
