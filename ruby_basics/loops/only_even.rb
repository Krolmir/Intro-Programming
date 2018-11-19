number = 0

until number == 10
  number += 1
  puts number if number.even? == true
  puts number.next if number.even? == false
end


number = 0

until number == 10
  number += 1
  next if number.odd?
  p number
end