# Egyption Fractions

require 'pry'


def egyptian(frac)
  arr = []
  total = 0
  count = 1

  loop do
    break if total >= frac
  
    if total + Rational(1, count) <= frac
      total += Rational(1, count)
      arr << Rational(1, count).denominator
    end

    count += 1
  end
  p arr
end

def unegyptian(arr)
 count = 0
 total = 0
 
 
 loop do
    break if count == arr.size
    
    total += Rational(1, arr[count])
    Rational(1, arr[count])
    count += 1
  end
  p total
end



egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)