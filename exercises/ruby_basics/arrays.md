[Launch School Core Curriculum][readme] >
[Exercises: Ruby Basics][ruby-basics] >
Arrays

# Arrays

Ruby Basics exercises from [Launch School's][launch-school] [Core Curriculum][core-curriculum].

1. --

```ruby
pets = %w[cat dog fish lizard]
my_pet = pets[2]
puts "I have a pet #{my_pet}!"
```

2. --

```ruby
pets = %w[cat dog fish lizard]
my_pets = pets[2, 3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
```

3. --

```ruby
pets = %w[cat dog fish lizard]
my_pets = pets[2..3]
my_pets.pop
puts "I have a pet #{my_pets[0]}!"
```

4. --

```ruby
pets = %w[cat dog fish lizard]
my_pets = pets[2..3]
my_pets.pop
my_pets.push pets[1]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
```

5. --

```ruby
colors = %w[red yellow purple green]
colors.each { |color| puts "I'm the color #{color}!" }
```

6. --

```ruby
numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map { |num| num * 2 }
p doubled_numbers
```

7. --

```ruby
numbers = [5, 9, 21, 26, 39]
divisible_by_three = numbers.select { |num| num % 3 == 0 }
p divisible_by_three
```

8. --

```ruby
[["Dave", 7], ["Miranda", 3], ["Jason", 11]]
```

9. --

```ruby
favorites = [["Dave", 7], ["Miranda", 3], ["Jason", 11]]
favorites.flatten!
p favorites
```

10. --

```ruby
array1 = [1, 5, 9]
array2 = [1, 9, 5]
puts array1 == array2
```

[readme]: /README.md
[ruby-basics]: contents.md
[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
