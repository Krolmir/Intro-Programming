# You have a bank of switches before you, numbered from 1 to n. Each switch is
# connected to exactly one light that is initially off. You walk down the row
# of switches and toggle every one of them. You go back to the beginning, and
# on this second pass, you toggle switches 2, 4, 6, and so on. On the third
# pass, you go back again to the beginning and toggle switches 3, 6, 9, and
# so on. You repeat this process and keep going until you have been through
# n repetitions.

# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value
# is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value
# is [1, 4, 9].

require 'pry'

def lights(number)
  new_arr = Array.new(number, false)
  count = 1
  on = []
  off = []

  loop do

    # multiples of something 
    new_arr = new_arr.each_with_index do |element, i|
      if (i + 1) % count == 0
        new_arr[i] = !element
      end
    end

    count += 1
    break if count > number
  end

  new_arr.each_with_index do |element, i|
    if element == true
      on << i + 1
    else
      off << i + 1
    end
  end
  on_last = on.pop
  off_last = off.pop
  # binding.pry
  p "The Lights that are on are #{on.to_s.gsub(/[\[\]]/, '')} and "\
    "#{on_last.to_s.gsub(/[\[\]]/, '')}."
  p "The Lights that are off are #{off.to_s.gsub(/[\[\]]/, '')} and "\
    "#{off_last.to_s.gsub(/[\[\]]/, '')}."
end

lights(5)
lights(10)
lights(1000)
