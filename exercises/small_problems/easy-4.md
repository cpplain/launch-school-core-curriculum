[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Easy 4

# Easy 4

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. --

```ruby
def short_long_short(string1, string2)
  if string1.size < string2.size
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end

short_long_short("abc", "defgh") == "abcdefghabc"
short_long_short("abcde", "fgh") == "fghabcdefgh"
short_long_short("", "xyz") == "xyz"
```

2. --

```ruby
def century(year)
  century = (year % 100 > 0) ? ((year / 100) + 1) : (year / 100)
  tens = century % 100
  ones = century % 10

  if (ones == 1) && (tens < 10 || tens > 20)
    century.to_s + "st"
  elsif ones == 2 && (tens < 10 || tens > 20)
    century.to_s + "nd"
  elsif ones == 3 && (tens < 10 || tens > 20)
    century.to_s + "rd"
  else
    century.to_s + "th"
  end
end

century(2000) == "20th"
century(2001) == "21st"
century(1965) == "20th"
century(256) == "3rd"
century(5) == "1st"
century(10_103) == "102nd"
century(1052) == "11th"
century(1127) == "12th"
century(11_201) == "113th"
```

3. --

```ruby
def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240_000) == true
leap_year?(240_001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true
```

4. --

```ruby
def leap_year?(year)
  year % 4 == 0 if year < 1752
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240_000) == true
leap_year?(240_001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true
```

5. --

```ruby
def multisum(number)
  (1..number).select { |n| (n % 3 == 0) || (n % 5 == 0) }.reduce(:+)
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234_168
```

6. --

```ruby
def running_total(numbers)
  sum = 0
  numbers.map { |x| sum += x }
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
```

7. --

```ruby
def string_to_integer(string)
  number = 0
  position = 1

  string.reverse.each_char do |character|
    case character
    when "0"
      integer = 0
    when "1"
      integer = 1
    when "2"
      integer = 2
    when "3"
      integer = 3
    when "4"
      integer = 4
    when "5"
      integer = 5
    when "6"
      integer = 6
    when "7"
      integer = 7
    when "8"
      integer = 8
    when "9"
      integer = 9
    end

    number += integer * position
    position *= 10
  end

  number
end

string_to_integer("4321") == 4321
string_to_integer("570") == 570
```

8. --

```ruby
DIGITS = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
}

def string_to_signed_integer(string)
  sign = string[0] == "-" ? -1 : 1
  number = 0

  string.each_char do |char|
    next if "+-".include? char
    number = number * 10 + DIGITS[char]
  end

  number * sign
end

string_to_signed_integer("4321") == 4321
string_to_signed_integer("-570") == -570
string_to_signed_integer("+100") == 100
```

9. --

```ruby
DIGITS = {
  0 => "0",
  1 => "1",
  2 => "2",
  3 => "3",
  4 => "4",
  5 => "5",
  6 => "6",
  7 => "7",
  8 => "8",
  9 => "9",
}

def integer_to_string(integer)
  string = ""

  loop do
    string = DIGITS[integer % 10] + string
    integer /= 10
    break if integer == 0
  end

  string
end

integer_to_string(4321) == "4321"
integer_to_string(0) == "0"
integer_to_string(5000) == "5000"
```

10. --

```ruby
DIGITS = %w[0 1 2 3 4 5 6 7 8 9]

def integer_to_string(integer)
  string = ""

  loop do
    integer, remainder = integer.divmod(10)
    string.prepend(DIGITS[remainder])
    break if integer == 0
  end

  string
end

def signed_integer_to_string(integer)
  if integer > 0
    "+" << integer_to_string(integer)
  elsif integer < 0
    "-" << integer_to_string(integer * -1)
  else
    "0"
  end
end

signed_integer_to_string(4321) == "+4321"
signed_integer_to_string(-123) == "-123"
signed_integer_to_string(0) == "0"
```

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
