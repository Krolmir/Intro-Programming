names = ['Sally', 'Joe', 'Lisa', 'Henry']


while names.length != 0 
  p names.delete_at(0)
end

p names

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  p names.delete_at(0)
  if names.length == 0 
    break
  end
end

p names