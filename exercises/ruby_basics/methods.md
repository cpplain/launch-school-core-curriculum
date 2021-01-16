[Launch School Core Curriculum](/README.md) >
[Exercises: Ruby Basics](/exercises/ruby_basics/ruby_basics_contents.md) >
Methods

# Methods

Ruby Basics exercises from [Launch School’s](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. 
```ruby
def print_me
  puts "I'm printing within the method!"
end

print_me
```
2. 
```ruby
def print_me
  "I'm printing the return value!"
end

puts print_me
```
3. 
```ruby
def hello
  "Hello"
end

def world
  "World"
end

puts "#{hello} #{world}"
```
4. 
```ruby
def hello
  "Hello"
end

def world
  "World"
end

def greet
  "#{hello} #{world}"
end

puts greet
```
5. 
```ruby
def car(make, model)
  puts "#{make} #{model}"
end

car("Toyota", "Corolla")
```
6. 
```ruby
def time_of_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)
```
7. 
```ruby
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."
```
8. 
```ruby
def assign_name(name = 'Bob')
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'
```
9. 
```ruby
def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
```
10. 
```ruby
def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
```
