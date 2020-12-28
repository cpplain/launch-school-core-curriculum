# Exercise 2

def get_input
  puts "Enter text to print to the screen 'STOP' to finish"
  gets.chomp
end

user_input = get_input

while user_input != "STOP"
  p user_input
  user_input = get_input
end
