#Using Regex 
def check_str(str)
  str.downcase.match(/lab/) { p str }
end

check_str("laboratory")
check_str("experiment")
check_str("Pans Labyrinth")
check_str("elaborate")
check_str("polar bear")