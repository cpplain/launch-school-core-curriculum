# Exercise 1
puts "Christopher" + "Plain"

# Exercise 2
number = 1234
thousands = number / 1000
hundreds = number % 1000 / 100
tens = number % 100 / 10
ones = number % 10

puts "number: #{number}, thousands: #{thousands}, hundreds: #{hundreds}, tens: #{tens}, ones: #{ones}"

# Exercise 3
movies = {
  "The Santa Clause" => 1994,
  "The Santa Clause 2" => 2002,
  "The Santa Clause 3" => 2006,
  "Elf" => 2003
}

puts movies["The Santa Clause"]
puts movies["The Santa Clause 2"]
puts movies["The Santa Clause 3"]
puts movies["Elf"]

# Exercise 4
dates = [
  movies["The Santa Clause"],
  movies["The Santa Clause 2"],
  movies["The Santa Clause 3"],
  movies["Elf"]
]

puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]

# Exercise 5
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# Exercise 6 
puts 1.3 * 1.3
puts 2.4 * 2.4
puts 3.5 * 3.5

# Exercise 7
puts "There is an opening bracket somewhere in the program without a matching closing bracket."
