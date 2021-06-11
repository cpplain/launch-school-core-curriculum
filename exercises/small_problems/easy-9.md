[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Easy 9

# Easy 9

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. --

```ruby
def greetings(name, profile)
  "Hello, #{name.join(" ")}! Nice to have a #{profile[:title]} #{profile[:occupation]} around."
end

greetings(%w[John Q Doe], { title: "Master", occupation: "Plumber" }) ==
  "Hello, John Q Doe! Nice to have a Master Plumber around."
```

2. --

```ruby
def twice(number)
  num_string = number.to_s
  half = num_string.length / 2
  halves_equal = num_string.slice(0, half) == num_string.slice(-half, half)

  return number if num_string.length.even? && halves_equal
  number * 2
end

twice(37) == 74
twice(44) == 44
twice(334_433) == 668_866
twice(444) == 888
twice(107) == 214
twice(103_103) == 103_103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
```

3. --

```ruby
def negative(number)
  number > 0 ? -number : number
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0
```

4. --

```ruby
def sequence(number)
  result = []
  (1..number).each { |num| result << num }
  result
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
```

5. --

```ruby
def uppercase?(string)
  string.chars.all?(/[^a-z]/)
end

uppercase?("t") == false
uppercase?("T") == true
uppercase?("Four Score") == false
uppercase?("FOUR SCORE") == true
uppercase?("4SCORE!") == true
uppercase?("") == true
```

6. --

```ruby
def word_lengths(words)
  words.split.map { |word| "#{word} #{word.length}" }
end

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
word_lengths("baseball hot dogs and apple pie") == [
  "baseball 8",
  "hot 3",
  "dogs 4",
  "and 3",
  "apple 5",
  "pie 3",
]
word_lengths("It ain't easy, is it?") == [
  "It 2",
  "ain't 5",
  "easy, 5",
  "is 2",
  "it? 3",
]
word_lengths("Supercalifragilisticexpialidocious") == [
  "Supercalifragilisticexpialidocious 34",
]
word_lengths("") == []
```

7. --

```ruby
def swap_name(name)
  first, last = name.split
  last + ", " + first
end

swap_name("Joe Roberts") == "Roberts, Joe"
```

8. --

```ruby
def sequence(count, first)
  result = []
  (1..count).each { |num| result << first * num }
  result
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1_000_000) == []
```

9. --

```ruby
def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3
  case
  when 90 <= average
    "A"
  when 80 <= average
    "B"
  when 70 <= average
    "C"
  when 60 <= average
    "D"
  else
    "F"
  end
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
```

10. --

```ruby
def buy_fruit(fruits)
  fruits.map { |fruit| ([] << fruit[0]) * fruit[1] }.flatten
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == %w[
  apples
  apples
  apples
  orange
  bananas
  bananas
]
```

11. --

```ruby
words = %w[
  demo
  none
  tied
  evil
  dome
  mode
  live
  fowl
  veil
  wolf
  diet
  vile
  edit
  tide
  flow
  neon
]

anagrams = {}

words.each do |word|
  sorted_word = word.chars.sort.join
  anagrams[sorted_word] = [] if !anagrams.key?(sorted_word)
  anagrams[sorted_word].push(word)
end

anagrams.each_value { |v| p v }
```

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
