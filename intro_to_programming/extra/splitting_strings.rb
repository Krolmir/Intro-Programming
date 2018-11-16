#Splitting strings in an array and then recreating an array

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

arr = []

a.map { |v| arr.push(v.split(' ')) }
p arr = arr.flatten