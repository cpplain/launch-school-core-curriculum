[Launch School Core Curriculum](/README.md) >
[Exercises: Ruby Basics](/exercises/ruby_basics/ruby_basics_contents.md) >
Conditionals

# Conditionals

Ruby Basics exercises from [Launch School’s](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. 
```ruby
sun = ['visible', 'hidden'].sample
puts 'The sun is so bright!' if sun == 'visible'
```
2. 
```ruby
sun = ['visible', 'hidden'].sample
puts 'The clouds are blocking the sun!' unless sun == 'visible'
```
3. 
```ruby
sun = ['visible', 'hidden'].sample
puts 'The sun is so bright!' if sun == 'visible'
puts 'The clouds are blocking the sun!' unless sun == 'visible'
```
4. 
```ruby
boolean = [true, false].sample
boolean ? puts("I'm true!") : puts("I'm false!")
```
5. 
```
My favorite number is 7.
```
6. 
```ruby
stoplight = ['green', 'yellow', 'red'].sample
case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
when 'red'
  puts 'Stop!'
end
```
7. 
```ruby
stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end
```
8. 
```ruby
status = ['awake', 'tired'].sample

action = if status == 'awake'
           'Be productive!'
         else
           'Go to sleep!'
         end
puts action
```
9. 
```ruby
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end
```
10. 
```ruby
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end
```
