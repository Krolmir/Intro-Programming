# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers between the two
# numbers, except if a number is divisible by 3, print "Fizz", if a number is
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and
# 5, print "FizzBuzz".

def fizzbuzz(num1, num2)
  str = []
  num1.upto(num2) do |num|
    str << if (num % 3).zero? && (num % 5).zero?
             'FizzBuzz'
           elsif (jnum % 3).zero?
             'Fizz'
           elsif (num % 5).zero?
             'Buzz'
           else
             num.to_s
           end
    # case variable
    # when "FizzBuzz"
    #   str += "FizzBuzz"
    # when "Fizz"
    #   str += "Fizz"
    # when "Buzz"
    #   str += "Buzz"
    # else
    #   str += num.to_s
    # end
    # str += ', '
  end

  p str.join(', ')
end

fizzbuzz(1, 15)
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
