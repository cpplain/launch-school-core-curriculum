# Loops 1

Notes for Ruby Basics Exercises from [Launch School’s](https://launchschool.com) RB100 course.

1. 
```ruby
loop do
  puts 'Just keep printing...'
  break
end
```
2. 
```ruby
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end

  break
end

puts 'This is outside all loops.'
```
3. 
```ruby
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations == 5
end
```
4. 
```ruby
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == "yes"
end
```
5. 
```ruby
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end
```
6. 
```ruby
count = 0

while count < 5
  puts rand(100)
  count += 1
end
```
7. 
```ruby
count = 1

until count > 10
  puts count
  count += 1
end
```
8. 
```ruby
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end
```
9. 
```ruby
for i in 1..100
  puts i if i.odd?
end
```
10. 
```ruby
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end
```
