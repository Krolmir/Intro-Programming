#Testing arrays and hashes

h = {a:1, b:2, c:3, d:4}

p h.values
p h.to_a

# hash values as arrays
hash = {names: ['bob', 'joe', 'susan']}
p hash

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]
p arr