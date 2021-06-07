[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Easy 6

# Easy 6

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. --

```ruby
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(angle)
  degrees, fractional_degree = angle.divmod(1)
  minutes, fractional_minute =
    (MINUTES_PER_DEGREE * fractional_degree).divmod(1)
  seconds = (SECONDS_PER_MINUTE * fractional_minute).round

  format("%s%s%02d'%02d\"", degrees, DEGREE, minutes, seconds)
end

dms(30) == "30°00'00\""
dms(76.73) == "76°43'48\""
dms(254.6) == "254°36'00\""
dms(93.034773) == "93°02'05\""
dms(0) == "0°00'00\""
dms(360) == "360°00'00\"" || dms(360) == "0°00'00\""
```

2. --

```ruby
def remove_vowels(strings)
  strings.map { |string| string.delete "aeiouAEIOU" }
end

remove_vowels(%w[abcdefghijklmnopqrstuvwxyz]) == %w[bcdfghjklmnpqrstvwxyz]
remove_vowels(%w[green YELLOW black white]) == %w[grn YLLW blck wht]
remove_vowels(%w[ABC AEIOU XYZ]) == ["BC", "", "XYZ"]
```

3. --

```ruby
def calculate_next_fibonacci(fib_sequence)
  fib_sequence.push(fib_sequence[-1] + fib_sequence[-2])
end

def find_fibonacci_index_by_length(length)
  fib_sequence = [1, 1]
  while fib_sequence.last.digits.length < length
    calculate_next_fibonacci(fib_sequence)
  end
  fib_sequence.length
end

find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(3) == 12
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10_000) == 47_847
```

4. --

```ruby
def reverse!(list)
  left_index = 0
  right_index = list.length - 1

  while left_index < right_index
    list[right_index], list[left_index] = list[left_index], list[right_index]
    left_index += 1
    right_index -= 1
  end

  list
end

list = [1, 2, 3, 4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w[a b e d c]
reverse!(list) == %w[c d e b a]
list == %w[c d e b a]

list = ["abc"]
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []
```

5. --

```ruby
def reverse(list)
  reversed_list = []
  index = list.length - 1

  while index >= 0
    reversed_list.push(list[index])
    index -= 1
  end

  reversed_list
end

reverse([1, 2, 3, 4]) == [4, 3, 2, 1]
reverse(%w[a b e d c]) == %w[c d e b a]
reverse(["abc"]) == ["abc"]
reverse([]) == []

list = [1, 3, 2]
new_list = reverse(list)
list.object_id != new_list.object_id
list == [1, 3, 2]
new_list == [2, 3, 1]
```

6. --

```ruby
def merge(array1, array2)
  array1.union(array2)
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
```

7. --

```ruby
def halvsies(array)
  second_half = array.length / 2
  first_half = second_half + (array.length % 2)
  [array[0, first_half], array[first_half, second_half]]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
```

8. --

```ruby
def find_dup(array)
  seen_elements = []
  array.each do |element|
    return element if seen_elements.index(element)
    seen_elements.push(element)
  end
end

find_dup([1, 5, 3, 1]) == 1

# prettier-ignore
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
```

9. --

```ruby
def include?(array, search_value)
  return true if array.index(search_value)
  false
end

include?([1, 2, 3, 4, 5], 3) == true
include?([1, 2, 3, 4, 5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
```

10. --

```ruby
def print_row(spaces, stars)
  puts "#{" " * spaces}#{"*" * stars}"
end

def triangle(side_length)
  spaces = side_length
  stars = 0

  while stars <= side_length
    print_row(spaces, stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
#
#     *
#    **
#   ***
#  ****
# *****

triangle(9)
#
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
```

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
