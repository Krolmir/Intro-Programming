pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = ""

pets.each { |v| 
  if v == "fish"
    my_pet = v
  end
}

p "I have a pet #{my_pet}"

my_pets = pets.select { |v| v == "fish" }

p "I have a pet #{my_pets.fetch(0)}"