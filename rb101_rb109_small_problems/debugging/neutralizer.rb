def neutralize(sentence)
  words = sentence.split(' ')
  count = 0

  loop do
    
    if negative?(words[count])
      words.delete_at(count) 
    else
      count += 1
    end
    
    break if count > words.length
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.