# Exercise 3

def countdown_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    countdown_to_zero(number - 1)
  end
end

puts "Enter a number to start countdown:"
number = gets.chomp.to_i

countdown_to_zero(number)
