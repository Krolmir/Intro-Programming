require 'pry'

def valid_string?(str)
  
  strim = str.gsub(/[^\[\]\(\)\{\}]/,'')
  
  return true if strim.empty?
  return false if strim.size.odd?
  
  loop do  
    binding.pry
    s = strim.gsub('()','').gsub('[]','').gsub('{}','')
    
    return true if s.empty?
    return false if s == strim
    
    strim = s
  end   
end

p valid_string?("[ ]")               # => true
p valid_string?("[  ")               # => false
p valid_string?("[ ( text ) {} ]")   # => true
p valid_string?("[ ( text { ) } ]")  # => false
p valid_string?("[ ( text { more text { (more text) }} )]")  # => true