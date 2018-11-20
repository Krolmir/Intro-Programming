def time_of_day(daylight)
  p "It's daytime!" if daylight == true
  p "It's nighttime!" if daylight == false
end  
  
daylight = [true, false].sample
time_of_day(daylight)