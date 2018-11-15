# Displaying the keys and values of hashes different ways

hash1 = { golf: "Tiger Woods",
          soccer: "Ronaldo",
          running: "Rejean Chasian",
          tennis: "Matty P",
          baseketball: "Vince Carter",
          hockey: "Tavares"
          }
          
hash1.each { |k, v| p "This is a key: #{k}" }
hash1.each { |k, v| p "This is a value: #{v}" }
hash1.each { |k, v| p "This is a key: #{k} & this is a value: #{v}" }