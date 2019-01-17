# Madlibs revisited

NOUNS = %w{lizard river town tree shirt water city}
VERBS = %w{eat draw dream fly forbid give hit hold hide}
ADJECTIVES = %w{blurry cold loud little spicy stinky sticky}
ADVERBS = %w{totally lazily swiftly quickly hastily simply rather}

new_arr = []

File.open("madlibs.txt").each do |line|
  new_arr << line.strip
end

new_arr.each do |line|
  line.gsub!(/NOUNS/, NOUNS.sample)
  line.gsub!(/ADVERBS/, ADVERBS.sample)
  line.gsub!(/VERBS/, VERBS.sample)
  line.gsub!(/ADJECTIVES/, ADJECTIVES.sample)
end

puts new_arr.join("\n")
