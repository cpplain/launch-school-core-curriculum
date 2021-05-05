[Launch School Core Curriculum][readme] >
[Exercises: Ruby Basics][ruby-basics] >
Conditionals

# Conditionals

Ruby Basics exercises from [Launch School's][launch-school] [Core Curriculum][core-curriculum].

1. --

```ruby
sun = %w[visible hidden].sample
puts "The sun is so bright!" if sun == "visible"
```

2. --

```ruby
sun = %w[visible hidden].sample
puts "The clouds are blocking the sun!" unless sun == "visible"
```

3. --

```ruby
sun = %w[visible hidden].sample
puts "The sun is so bright!" if sun == "visible"
puts "The clouds are blocking the sun!" unless sun == "visible"
```

4. --

```ruby
boolean = [true, false].sample
boolean ? puts("I'm true!") : puts("I'm false!")
```

5. --

```text
My favorite number is 7.
```

6. --

```ruby
stoplight = %w[green yellow red].sample
case stoplight
when "green"
  puts "Go!"
when "yellow"
  puts "Slow down!"
when "red"
  puts "Stop!"
end
```

7. --

```ruby
stoplight = %w[green yellow red].sample

if stoplight == "green"
  puts "Go!"
elsif stoplight == "yellow"
  puts "Slow down!"
else
  puts "Stop!"
end
```

8. --

```ruby
status = %w[awake tired].sample

action = status == "awake" ? "Be productive!" : "Go to sleep!"
puts action
```

9. --

```ruby
number = rand(10)

if number == 5
  puts "5 is a cool number!"
else
  puts "Other numbers are cool too!"
end
```

10. --

```ruby
stoplight = %w[green yellow red].sample

case stoplight
when "green"
  puts "Go!"
when "yellow"
  puts "Slow down!"
else
  puts "Stop!"
end
```

[readme]: /README.md
[ruby-basics]: contents.md
[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
