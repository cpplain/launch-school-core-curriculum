[Launch School Core Curriculum](/README.md) >
[Exercises: Ruby Basics](/exercises/ruby_basics/ruby_basics_contents.md) >
User Input

# User Input

Ruby Basics exercises from [Launch School’s](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. 
```ruby
puts ">> Type anything you want:"
input = gets.chomp
puts input
```
2. 
```ruby
puts ">> What is your age in years?"
age = gets.chomp.to_i
puts "You are #{age * 12} months old."
```
3. 
```ruby
puts ">> Do you want me to print something? (y/n)"
answer = gets.chomp
puts "something" if answer == "y"
```
4. 
```ruby
answer = nil
loop do
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
  break if %(y, n).include?(answer)
  puts ">> Invalid input! Please enter y or n"
end
puts "something" if answer == "y"
```
5. 
```ruby
num = 0

loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  num = gets.chomp.to_i
  break if num >= 3
  puts ">> That's not enough lines."
end

num.times do
  puts "Launch School is the best!"
end
```
6. 
```ruby
PASSWORD = "NotAGoodPassword"

loop do
  puts ">> Please enter your password:"
  user_password = gets.chomp
  break if user_password == PASSWORD
  puts ">> Invalid password!"
end

puts "Welcome!"
```
7. 
```ruby
USERNAME = "christopher"
PASSWORD = "NotAGoodPassword"

loop do
  puts ">> Please enter user name:"
  username_try = gets.chomp
  puts ">> Please enter your password:"
  password_try = gets.chomp
  break if username_try == USERNAME && password_try == PASSWORD
  puts ">> Authorization failed!"
end

puts "Welcome!"
```
8. 
```ruby
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numberator = nil
loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end

denominator = nil
loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp
  if !valid_number?(denominator)
    puts ">> Invalid input. Only integers are allowed."
  elsif denominator == "0"
    puts ">> Invalid input. A denominator of 0 is not allowed."
  else
    break
  end
end

numerator = numerator.to_i
denominator = denominator.to_i
puts "#{numerator} / #{denominator} is #{numerator / denominator}"
```
9. 
```ruby
loop do
  input = nil
  number_of_lines = nil

  loop do
    puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'

    input = gets.chomp.downcase
    break if input == 'q'

    number_of_lines = input.to_i
    break if number_of_lines >= 3

    puts ">> That's not enough lines."
  end

  break if input == 'q'

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end
```
10. 
```ruby
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def get_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
end

first_number = nil
second_number = nil

loop do
  first_number = get_number
  second_number = get_number
  break if first_number * second_number < 0
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"
```
