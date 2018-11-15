#Bonus question 3

array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = []

array_1.select  do |v|
  if v.odd? == true
    new_arr.push(v)
  end
end

p new_arr

