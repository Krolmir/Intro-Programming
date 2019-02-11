array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

puts array1.object_id
puts array2.object_id

array1.each { |v| puts "#{v} = value and #{v.object_id} = object it" }
array2.each { |v| puts "#{v} = value and #{v.object_id} = object it" }