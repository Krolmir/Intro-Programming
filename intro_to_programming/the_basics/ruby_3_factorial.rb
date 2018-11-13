f_num = [5, 6, 7, 8]

f_num.each do |x| 
  total = x
  i = 1
  while  i < x
    total = total * (x - i)
    i += 1
  end
  puts total
end    

