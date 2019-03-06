def guess_blue(blue_start, red_start, blue_pulled, red_pulled)
  (blue_start - blue_pulled).to_f / ((blue_start + red_start) - (blue_pulled + red_pulled))
end

p guess_blue(5, 5, 2, 3) # , 0.6)
p guess_blue(5, 7, 4, 3) # , 0.2)
p guess_blue(12, 18, 4, 6) # , 0.4)  

