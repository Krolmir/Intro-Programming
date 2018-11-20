car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

p car.select { |k, v| v == "blue" }

p car[:color]