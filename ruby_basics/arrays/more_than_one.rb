pets = ['cat', 'dog', 'fish', 'lizard']


my_pets = pets.select { |v| v == "fish" || v == "lizard" }

p "I have a pet #{my_pets.fetch(0)} and a pet #{my_pets.fetch(1)}!"