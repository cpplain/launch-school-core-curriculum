[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Medium 1

# Medium 1

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. --

```ruby
def rotate_array(array)
  range = 1..(array.length - 1)
  rotated = array.slice(range).map { |item| item }
  rotated.push(array[0])
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(%w[a b c]) == %w[b c a]
rotate_array(["a"]) == ["a"]

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]
x == [1, 2, 3, 4]
```

2. --

```ruby
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  array = number.to_s.chars
  (array + rotate_array(array.slice!(-n..-1))).join.to_i
end

rotate_rightmost_digits(735_291, 1) == 735_291
rotate_rightmost_digits(735_291, 2) == 735_219
rotate_rightmost_digits(735_291, 3) == 735_912
rotate_rightmost_digits(735_291, 4) == 732_915
rotate_rightmost_digits(735_291, 5) == 752_913
rotate_rightmost_digits(735_291, 6) == 352_917
```

3. --

```ruby
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  array = number.to_s.chars
  array[-n..-1] = rotate_array(array[-n..-1])
  array.join.to_i
end

def max_rotation(number)
  size = number.to_s.length
  size.downto(1).each { |n| number = rotate_rightmost_digits(number, n) }
  number
end

max_rotation(735_291) == 321_579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15
max_rotation(8_703_529_146) == 7_321_609_845
```

4. --

```ruby
def lights(n)
  lights = [true] * n
  (2..n).each do |step|
    start_index = step - 1
    end_index = n - 1
    (start_index..end_index).step(step) do |index|
      lights[index] = !lights[index]
    end
  end
  result = []
  lights.each_with_index { |light, index| result.push(index + 1) if light }
  result
end

lights(5) == [1, 4]
lights(10) == [1, 4, 9]
```

5. --

```ruby
def diamond(grid_size)
  asterisks = 1
  line = 1
  middle = (grid_size / 2) + 1
  grid_size.times do
    spaces = (grid_size - asterisks) / 2
    puts " " * spaces + "*" * asterisks
    asterisks = line < middle ? asterisks + 2 : asterisks - 2
    line += 1
  end
end

diamond(1)
diamond(3)
diamond(9)
```

6. --

```ruby

```

7. --

```ruby
DIGITS = {
  "zero" => "0",
  "one" => "1",
  "two" => "2",
  "three" => "3",
  "four" => "4",
  "five" => "5",
  "six" => "6",
  "seven" => "7",
  "eight" => "8",
  "nine" => "9",
}

def word_to_digit(sentence)
  DIGITS.each { |word, digit| sentence.gsub!(word, digit) }
  sentence
end

word_to_digit("Please call me at five five five one two three four. Thanks.") ==
  "Please call me at 5 5 5 1 2 3 4. Thanks."
```

8. --

```ruby
def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765
```

9. --

```ruby
def fibonacci(nth)
  return 1 if nth <= 2

  nth_minus_1 = 1
  nth_minus_2 = 1
  nth_0 = 0

  (nth - 2).times do
    nth_0 = nth_minus_1 + nth_minus_2
    nth_minus_2 = nth_minus_1
    nth_minus_1 = nth_0
  end

  nth_0
end

fibonacci(20) == 6765
fibonacci(100) == 354_224_848_179_261_915_075
fibonacci(100_001) # => 4202692702.....8285979669707537501
```

10. --

```ruby
def fibonacci(nth)
  return 1 if nth <= 2

  nth_minus_1 = 1
  nth_minus_2 = 1
  nth_0 = 0

  (nth - 2).times do
    nth_0 = nth_minus_1 + nth_minus_2
    nth_minus_2 = nth_minus_1
    nth_minus_1 = nth_0
  end

  nth_0
end

def fibonacci_last(nth)
  fibonacci(nth) % 10
end

fibonacci_last(15) # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20) # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100) # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001) # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123_456_789) # -> 4
```

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
