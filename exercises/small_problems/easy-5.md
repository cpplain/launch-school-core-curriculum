[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Easy 5

# Easy 5

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. --

```ruby
def ascii_value(string)
  string.split("").reduce(0) { |sum, char| sum + char.ord }
end

ascii_value("Four score") == 984
ascii_value("Launch School") == 1251
ascii_value("a") == 97
ascii_value("") == 0
```

2. --

```ruby
def time_of_day(minutes)
  minutes = minutes % 1440 if minutes < 0 || 1440 < minutes
  hh, mm = minutes.divmod(60)
  "%02d" % hh + ":" + "%02d" % mm
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
```

3. --

```ruby
MIN_PER_HOUR = 60

def time_to_minutes(time); end

def after_midnight(time)
  hours, minutes = time.split(":")
  return 0 if hours.to_i == 24
  hours.to_i * MIN_PER_HOUR + minutes.to_i
end

def before_midnight(time)
  minutes = after_midnight(time)
  minutes > 0 ? 1440 - minutes : 0
end

after_midnight("00:00") == 0
before_midnight("00:00") == 0
after_midnight("12:34") == 754
before_midnight("12:34") == 686
after_midnight("24:00") == 0
before_midnight("24:00") == 0
```

4. --

```ruby
def swap(words)
  words =
    words.split.map do |word|
      first_char = word[0]
      last_char = word[-1]
      word[0] = last_char
      word[-1] = first_char
      word
    end

  words.join(" ")
end

swap("Oh what a wonderful day it is") == "hO thaw a londerfuw yad ti si"
swap("Abcde") == "ebcdA"
swap("a") == "a"
```

5. --

```ruby
def cleanup(string)
  new_string = ""

  string.each_char do |char|
    new_char = /[a-z]/.match(char) ? char : " "
    new_string << new_char unless new_char == " " && new_string[-1] == " "
  end

  new_string
end

cleanup("---what's my +*& line?") == " what s my line "
```

6. --

```ruby
def word_sizes(words)
  letter_count = Hash.new(0)

  words.split.each { |word| letter_count[word.size] += 1 }

  letter_count
end

word_sizes("Four score and seven.") == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes("Hey diddle diddle, the cat and the fiddle!") == {
  3 => 5,
  6 => 1,
  7 => 2,
}
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes("") == {}
```

7. --

```ruby
def word_sizes(words)
  letter_count = Hash.new(0)

  words.split.each { |word| letter_count[word.gsub(/[^a-zA-Z]/, "").size] += 1 }

  letter_count
end

word_sizes("Four score and seven.") == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes("Hey diddle diddle, the cat and the fiddle!") == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes("") == {}
```

8. --

```ruby
NUMBERS = %w[
  zero,
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  eleven,
  twelve,
  thirteen,
  fourteen,
  fifteen,
  sixteen,
  seventeen,
  eighteen,
  nineteen
]

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBERS[number] }
end

alphabetic_number_sort((0..19).to_a) == [
  8,
  18,
  11,
  15,
  5,
  4,
  14,
  9,
  19,
  1,
  7,
  17,
  6,
  16,
  10,
  13,
  3,
  12,
  2,
  0,
]
```

9. --

```ruby
def crunch(string)
  new_string = ""
  string.each_char { |char| new_string << char if char != new_string[-1] }
  new_string
end

crunch("ddaaiillyy ddoouubbllee") == "daily double"
crunch("4444abcabccba") == "4abcabcba"
crunch("ggggggggggggggg") == "g"
crunch("a") == "a"
crunch("") == ""
```

10. --

```ruby
def print_in_box(text)
  size = text.size
  puts "+-#{"-" * size}-+"
  puts "| #{" " * size} |"
  puts "| #{text} |"
  puts "| #{" " * size} |"
  puts "+-#{"-" * size}-+"
end

print_in_box("To boldly go where no one has gone before.")
print_in_box("")
```

11. The method returns a different object.

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
