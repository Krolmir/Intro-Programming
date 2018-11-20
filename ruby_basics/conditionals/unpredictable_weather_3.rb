sun = ['visible', 'hidden'].sample

p "The sun is so bright" if sun == "visible"
p "The clouds are blocking the sun!" unless sun == "visible"