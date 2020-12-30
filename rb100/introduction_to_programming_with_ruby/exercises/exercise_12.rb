# Exercise 12

contact_data = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts = { "Joe Smith" => {}, "Sally Johnson" => {} }

contact_keys = {}
contacts.each_key { |key| contact_keys[key.split(' ')[0].downcase] = key }

contact_data.each do |contact_array|
  first_name = contact_array[0].split('@')[0]
  contact_key = contact_keys[first_name]
  contacts[contact_key][:email] = contact_array[0]
  contacts[contact_key][:address] = contact_array[1]
  contacts[contact_key][:phone] = contact_array[2]
end

puts "Joe's email is #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is #{contacts["Sally Johnson"][:phone]}"
