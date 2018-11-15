#Program that uses .merge and .merge!

hash1 = { golf: "Tiger Woods",
          soccer: "Ronaldo",
          running: "Rejean Chasian"
          }
hash2 = { tennis: "Matty P",
          baseketball: "Vince Carter",
          hockey: "Tavares"
          }

hash3 = hash1.merge(hash2)
#This will return a combined hash of hash one and hash 2 with out destroying the first hash.  This is why I saved it as a third hash to output

p "This is the original hash1: #{hash1}"
p "This is the original hash2: #{hash2}"
p "This is the new hash 3 merged we assigned: #{hash3}"

hash1.merge!(hash2)
#This one modified our initial hash and mutated it permanently
p "This is hash1, but the overwritten version since we used ! symbol: #{hash1}"
