# Exercise 1
def greeting(name)
  "Hello, #{name}."
end

puts "What is your name?"
name = gets.chomp
puts greeting(name)
