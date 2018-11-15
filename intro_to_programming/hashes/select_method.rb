# Gathering immediate family members with the select method

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
}
immdeiate_family = Array.new
immdeiate_family = family.select do |k, v| 
  k == :brothers || k == :sisters 
end
temp = immdeiate_family.values.flatten
p temp