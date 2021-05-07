[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Easy 1

# Easy 1

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. --

```ruby
def repeat(string, num)
  num.times { puts string }
end

repeat("Hello", 3)
```

2. --

```ruby
def is_odd?(num)
  num % 2 == 1
end
```

3. --

```ruby
def digit_list(num)
  num.to_s.split("").map { |x| x.to_i }
end
```

4. --

```ruby
def count_occurrences(array_to_count)
  count = {}

  array_to_count.each do |element|
    count.key?(element) ? (count[element] += 1) : (count[element] = 1)
  end

  count.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = %w[car car truck car SUV truck motorcycle motorcycle car truck]

count_occurrences(vehicles)
```

5. --

```ruby
def reverse_sentence(sentence)
  sentence.split.reverse.join(" ")
end

puts reverse_sentence("") == ""
puts reverse_sentence("Hello World") == "World Hello"
puts reverse_sentence("Reverse these words") == "words these Reverse"
```

6. --

```ruby
def reverse_words(words)
  words.split.map { |word| (word.length < 5) ? word : word.reverse }.join(" ")
end

puts reverse_words("Professional") == "lanoisseforP"
puts reverse_words("Walk around the block") == "Walk dnuora the kcolb"
puts reverse_words("Launch School") == "hcnuaL loohcS"
```

7. --

```ruby
def stringy(num)
  str = ""

  num.times { |i| (i % 2 == 0) ? (str += "1") : (str += "0") }

  str
end

puts stringy(6) == "101010"
puts stringy(9) == "101010101"
puts stringy(4) == "1010"
puts stringy(7) == "1010101"
```

8. --

```ruby
def average(integers)
  integers.reduce(:+) / integers.count
end

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
```

9. --

```ruby
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
```

10. --

```ruby
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50_000, true) == 25_000
```

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
