# Create a method that takes 2 arguments, an array and a hash. The array will
# contain 2 or more elements that, when combined with adjoining spaces, will
# produce a person's name. The hash will contain two keys, :title and
# :occupation, and the appropriate values. Your method should return a greeting
# that uses the person's full name, and mentions the person's title.

def greetings(arr, hash)
  puts "Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} "\
       "#{hash[:occupation]} around."
end

greetings(%w(John Q Doe), title: 'Master', occupation: 'Plumber')
# => Hello, John Q Doe! Nice to have a Master Plumber around.
