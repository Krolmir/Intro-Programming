#Hash stuff

h = {a:1, b:2, c:3, d:4}
temp = {e:5}

h.select { |k,v| k == :b }
h.merge!(temp)
h.keep_if { |k,v| v > 3.5 }

