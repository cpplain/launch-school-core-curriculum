[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Easy 8

# Easy 8

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. --

```ruby
def sum_of_sums(numbers)
  prior_sequence = 0
  numbers.reduce(0) do |sum, number|
    prior_sequence += number
    sum + prior_sequence
  end
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
```

2. --

```ruby
print "Enter a noun: "
noun = gets.chomp

print "Enter a verb: "
verb = gets.chomp

print "Enter a adjective: "
adjective = gets.chomp

print "Enter a adverb: "
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
```

3. --

```ruby
def leading_substrings(string)
  prior_substring = ""
  string.chars.map { |char| prior_substring += char }
end

leading_substrings("abc") == %w[a ab abc]
leading_substrings("a") == ["a"]
leading_substrings("xyzzy") == %w[x xy xyz xyzz xyzzy]
```

4. --

```ruby
def substrings(string)
  length = string.length
  sub_strings = []

  string.chars.each_index do |left_index|
    sub_strings << string[left_index]
    right_index = left_index + 1

    while right_index < length
      sub_strings << string.slice(left_index..right_index)
      right_index += 1
    end
  end

  sub_strings
end

# prettier-ignore
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
```

5. --

```ruby
def substrings(string)
  length = string.length
  sub_strings = []

  string.chars.each_index do |left_index|
    sub_strings << string[left_index]
    right_index = left_index + 1

    while right_index < length
      sub_strings << string.slice(left_index..right_index)
      right_index += 1
    end
  end

  sub_strings
end

def palindromes(string)
  substrings(string).select do |string|
    string.length > 1 && string == string.reverse
  end
end

palindromes("abcd") == []
palindromes("madam") == %w[madam ada]

# prettier-ignore
palindromes("hello-madam-did-madam-goodbye") == %w[
  ll -madam- -madam-did-madam- madam madam-did-madam ada adam-did-mada
  dam-did-mad am-did-ma m-did-m -did- did -madam- madam ada oo
]
palindromes("knitting cassettes") == %w[nittin itti tt ss settes ette tt]
```

6. --

```ruby
def fizzbuzz(start_num, end_num)
  (start_num..end_num).each do |number|
    divisible_by_3 = number % 3 == 0
    divisible_by_5 = number % 5 == 0

    if divisible_by_3 && divisible_by_5
      puts "FizzBuzz"
    elsif divisible_by_3
      puts "Fizz"
    elsif divisible_by_5
      puts "Buzz"
    else
      puts number
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
```

7. --

```ruby
def repeater(string)
  new_string = ""
  string.each_char { |char| new_string << char * 2 }
  new_string
end

repeater("Hello") == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater("") == ""
```

8. --

```ruby
def double_consonants(string)
  new_string = ""
  string.each_char do |char|
    new_string << (char.match?(/[[:alpha:]&&[^aeiouAEIOU]]/) ? char * 2 : char)
  end
  new_string
end

double_consonants("String") == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants("") == ""
```

9. --

```ruby
def reversed_number(number)
  number.to_s.reverse.to_i
end

reversed_number(12_345) == 54_321
reversed_number(12_213) == 31_221
reversed_number(456) == 654
reversed_number(12_000) == 21
reversed_number(12_003) == 30_021
reversed_number(1) == 1
```

10. --

```ruby
def center_of(string)
  half_length = string.length / 2
  return string.slice(half_length) if string.length.odd?
  string.slice(half_length - 1, 2)
end

center_of("I love ruby") == "e"
center_of("Launch School") == " "
center_of("Launch") == "un"
center_of("Launchschool") == "hs"
center_of("x") == "x"
```

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
