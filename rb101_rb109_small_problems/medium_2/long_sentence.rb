def longest_sentence(str)
  str.gsub!(/\n/, ' ')
  
  biggest_sentence = 0
  
  str.split(/[.?!]/).each do |string| 
    if string.split.count > biggest_sentence
      biggest_sentence = string.split.count
    end
  end
  
  p biggest_sentence
end

str = ''
str2 = ''

File.open("longest_sentence.txt").each do |line|
 str += line
end

File.open("longest_sentence2.txt").each do |line|
 str2 += line
end

longest_sentence(str)
longest_sentence(str2)