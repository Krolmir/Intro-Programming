count = 1

loop do
  if count.odd? == true
    p "is odd!"
  else
    p "is even!"
  end
  count += 1
  if count > 5
    break
  end
end