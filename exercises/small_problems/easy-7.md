[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Easy 7

# Easy 7

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. --

```ruby
def interleave(array1, array2)
  combined_array = []
  (0..array1.length - 1).each do |index|
    combined_array.push(array1[index], array2[index])
  end
  combined_array
end

interleave([1, 2, 3], %w[a b c]) == [1, "a", 2, "b", 3, "c"]
```

2. --

```ruby
def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |char|
    if char.match(/[a-z]/)
      counts[:lowercase] += 1
    elsif char.match(/[A-Z]/)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

letter_case_count("abCdef 123") == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count("AbCd +Ef") == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count("123") == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count("") == { lowercase: 0, uppercase: 0, neither: 0 }
```

3. --

```ruby
def word_cap(string)
  string.split.map { |word| word.capitalize }.join(" ")
end

word_cap("four score and seven") == "Four Score And Seven"
word_cap("the javaScript language") == "The Javascript Language"
word_cap("this is a \"quoted\" word") == "This Is A \"quoted\" Word"
```

4. --

```ruby
def swapcase(string)
  string.chars.map do |char|
    char.match(/[a-z]/) ? char.upcase : char.downcase
  end.join("")
end

swapcase("CamelCase") == "cAMELcASE"
swapcase("Tonight on XYZ-TV") == "tONIGHT ON xyz-tv"
```

5. --

```ruby
def staggered_case(string)
  iteration = 0
  string.chars.map do |char|
    iteration += 1
    iteration.odd? ? char.upcase : char.downcase
  end.join("")
end

staggered_case("I Love Launch School!") == "I LoVe lAuNcH ScHoOl!"
staggered_case("ALL_CAPS") == "AlL_CaPs"
staggered_case("ignore 77 the 444 numbers") == "IgNoRe 77 ThE 444 NuMbErS"
```

6. --

```ruby
def staggered_case(string)
  iteration = 0
  string.chars.map do |char|
    iteration += 1 if char.match?(/[a-zA-Z]/)
    iteration.odd? ? char.upcase : char.downcase
  end.join("")
end

staggered_case("I Love Launch School!") == "I lOvE lAuNcH sChOoL!"
staggered_case("ALL CAPS") == "AlL cApS"
staggered_case("ignore 77 the 444 numbers") == "IgNoRe 77 ThE 444 nUmBeRs"
```

7. --

```ruby
def show_multiplicative_average(numbers)
  average = numbers.reduce(:*).to_f / numbers.length.to_f
  puts result = "The result is %.3f" % average
  result
end

show_multiplicative_average([3, 5]) == "The result is 7.500"
show_multiplicative_average([6]) == "The result is 6.000"
show_multiplicative_average([2, 5, 7, 11, 13, 17]) == "The result is 28361.667"
```

8. --

```ruby
def multiply_list(array1, array2)
  new_array = []
  array1.each_with_index { |element, i| new_array.push(element * array2[i]) }
  new_array
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
```

9. --

```ruby
def multiply_all_pairs(array1, array2)
  array1.product(array2).map { |numbers| numbers[0] * numbers[1] }.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
```

10. --

```ruby
def penultimate(string)
  string.split[-2]
end

penultimate("last word") == "last"
penultimate("Launch School is great!") == "is"
```

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
