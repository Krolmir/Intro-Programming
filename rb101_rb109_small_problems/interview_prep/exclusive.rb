=begin

input : 2 arguments booleans
output : boolean

steps:
1: define a method that takes 2 booleans and prints them out
2: create 2 ifs , one with arg1 true arg false and vice versa

=end

def xor?(arg1, arg2)
  return true if arg1 == true && arg2 == false
  return true if arg1 == false && arg2 == true
  false
end

p xor?(5.even?, 4.even?) # == true
p xor?(5.odd?, 4.odd?) # == true
p xor?(5.odd?, 4.even?) # == false
p xor?(5.even?, 4.odd?) # == false