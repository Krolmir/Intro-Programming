#A loop iterating the contacts hash so we don't have to input one by one.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data = contact_data.flatten
contacts.each_key do |name|
  i = 0
  temp = contact_data.slice!(0..2)
  temp.each do |v|
    if i == 0
    contacts[name][:email] = v
    elsif i == 1
    contacts[name][:address] = v
    elsif i == 2
    contacts[name][:number] = v
    end
    i += 1
    temp.delete(0)
  end
end
p contacts