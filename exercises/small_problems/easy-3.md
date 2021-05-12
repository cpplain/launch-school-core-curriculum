[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Easy 3

# Easy 3

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. --

```ruby
ordinals = %w[1st 2nd 3rd 4th 5th last]
numbers = []

ordinals.each do |ordinal|
  puts "==> Enter the #{ordinal} number:"
  numbers << gets.chomp.to_i
end

lastNumber = numbers.pop
result = numbers.include?(lastNumber) ? "appears" : "does not appear"

puts "The number #{lastNumber} #{result} in #{numbers}."
```

2. --

```ruby
puts "==> Enter the first number:"
num1 = gets.chomp.to_i
puts "==> Enter the second number:"
num2 = gets.chomp.to_i

puts "==> #{num1} + #{num2} = #{num1 + num2}"
puts "==> #{num1} - #{num2} = #{num1 - num2}"
puts "==> #{num1} * #{num2} = #{num1 * num2}"
puts "==> #{num1} / #{num2} = #{num1 / num2}1"
puts "==> #{num1} % #{num2} = #{num1 % num2}"
puts "==> #{num1} ** #{num2} = #{num1**num2}"
```

3. --

```ruby
print "Please write word or multiple words: "
words = gets.chomp
count = words.delete(" ").size
puts "There are #{count} characters in \"#{words}\"."
```

4. --

```ruby
def multiply(num1, num2)
  num1 * num2
end

multiply(5, 3) == 15
```

5. --

```ruby
def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

square(5) == 25
square(-8) == 64
```

6. --

```ruby
def xor?(condition1, condition2)
  (condition1 == true && condition2 == false) ||
    (condition1 == false && condition2 == true)
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
```

7. --

```ruby
def oddities(original_array)
  count = 0
  original_array.select do |element|
    count += 1
    count.odd?
  end
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(%w[abc def]) == ["abc"]
oddities([123]) == [123]
oddities([]) == []
```

8. --

```ruby
def palindrome?(string)
  left_index = 0
  right_index = string.size - 1

  while (left_index <= right_index)
    return false if string[left_index] != string[right_index]
    left_index += 1
    right_index -= 1
  end

  return true
end

palindrome?("madam") == true
palindrome?("Madam") == false # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?("356653") == true
```

9. --

```ruby
def real_palindrome?(string)
  string =
    string.chars.select { |char| char.match?(/[a-zA-Z0-9]/) }.join("").downcase
  string == string.reverse
end

real_palindrome?("madam") == true
real_palindrome?("Madam") == true # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?("356653") == true
real_palindrome?("356a653") == true
real_palindrome?("123ab321") == false
```

10. --

```ruby
def palindromic_number?(number)
  string = number.to_s
  string == string.reverse
end

palindromic_number?(34_543) == true
palindromic_number?(123_210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
```

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
