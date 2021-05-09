[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Easy 2

# Easy 2

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. --

```ruby
age = rand(20..200)
puts "Teddy is #{age} years old!"
```

2. --

```ruby
puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

square_meters = length * width
square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."
```

3. --

```ruby
print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
percentage = gets.chomp.to_f

tip = (bill * (percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format("%.2f", tip)}."
puts "The total is $#{format("%.2f", total)}."
```

4. --

```ruby
print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_retirement = retirement_age - current_age
retirement_year = current_year + years_to_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"
```

5. --

```ruby
print "What is your name? "
name = gets.chomp

if name.end_with?("!")
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
```

6. --

```ruby
(1..99).each { |number| puts number if number.odd? }
```

7. --

```ruby
(1..99).each { |number| puts number if number.even? }
```

8. --

```ruby
puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == "s"
  sum = (1..integer).reduce(:+)
  puts "The sum of the integers between 1 and 5 is #{sum}."
elsif operation == "p"
  product = (1..integer).reduce(:*)
  puts "The product of the integers between 1 and 6 is #{product}."
else
  puts "That's not a valid option."
end
```

9. The code prints `BOB` on separate lines. `name` is assigned the string object `"Bob"`. Then `save_name` is assigned to `name`. Both `name` and `save_name` are now referencing the same string object. When `upcase!` is called on `name` it mutates the string object that both variables (`name` and `save_name`) are referencing. Puts is then called with both variables, displaying the string `"BOB"` twice.

```ruby
name = "Bob"
save_name = name
name.upcase!
puts name, save_name

# BOB
# BOB
```

10. Both `array1` and `array2` contain references to the same string objects. Thus, when `upcase!` is used to mutate the strings in place in `array1`, `array2` reflects the exact same changes.

```ruby
array1 = %w[Moe Larry Curly Shemp Harpo Chico Groucho Zeppo]
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?("C", "S") }
puts array2

# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo
```

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
