[Launch School Core Curriculum][readme] >
[RB101 Programming Foundations][rb101-notes] >
Lesson 4: Ruby Collections

# Lesson 4: Ruby Collections

Notes for Lesson 4 of [Launch School’s][launch-school] RB101 course.

## Contents

- [Introduction](#introduction)
- [Collections Basics](#collections-basics)
- [Looping](#looping)
- [Introduction to PEDAC Process](#introduction-to-pedac-process)
- [The PEDAC Problem Solving Process](#the-pedac-problem-solving-process)
- [Selection and Transformation](#selection-and-transformation)
- [Methods](#methods)
- [Practice Problems](#practice-problems)

## Introduction

- Programming involves working with data
- **Collections** are structured containers for storing data
- This lesson will focus on three of the most commonly used collections in Ruby: `String`, `Array`, and `Hash`

## Collections Basics

### Element Reference

#### String Element Reference

- Strings use an integer-based index, starting from zero, that represents each character in the string
- `str[0]` reference a specific character by passing character index
- `str[0, 3]` reference multiple characters by passing the starting index and the number of characters to return
  `String#[s, l]` is an alias for `#slice`

#### Array Element Reference

- Arrays are an ordered list of elements, using a zero-based index
- `arr[0]` reference a specific element by passing the element index
- `arr[0, 3]` reference multiple elements by passing the starting index and the number of elements to return
  - `Array#[s, l]` is a alias for `#slice`

#### Hash Element Reference

- Hashes are a collection data structure, using key-value pairs
- Keys and values can be any type of Ruby object
- `hsh['fruit']` values accessed by passing the key
- `#keys` returns an array of keys
- `#values` returns an array of values
- It's common practice to use symbols as keys

### Element Reference Gotchas

#### Out of Bounds Indices

- Referencing an out of bound index returns `nil`
- Not necessarily a problem for strings but can be confusing for arrays
- `#fetch` throws an `IndexError` exception if index is out of bounds
- `#fetch` is safest but rarely used in Ruby code

#### Negative Indices

- Characters in strings and elements in arrays can be accessed using negative indices
- `-1` for the last character/element and working backwards

#### Invalid Hash Keys

- Invalid hash key will return `nil`
- Hash has a `#fetch` method that throws a `KeyError` exception if a key is invalid

### Conversion

- The similarities between strings and arrays lend to converting between one and the other
- This is common in Ruby, and there are a number of methods to facilitate conversion
- `String#chars` returns an array of individual characters
- `Array#join` returns a string with the elements of the array joined
- `String#split` returns an array of substrings based on a delimiter
- `Hash#to_a` returns an array containing an array for each key-value pair
- `Array#to_h` returns a hash from an array containing arrays of key-value pairs

### Element Assignment

#### String Element Assignment

- The element assignment notation of string can be used to change the value of a specific character
- `str[0] = 'c'` assigns the character 'c' to the first character in the string
- This method is destructive (i.e, it mutates the string)

#### Array Element Assignment

- Elements can be assigned to an array similar to strings
- `arr[0] = 1` assigns 1 to the first element of the array

#### Hash Element Assignment

- Hash assignment is done passing the key instead of the index
- `hsh[:apple] = 'Fruit'` assigns the value 'Fruit' to the key `:apple`

## Looping

### Controlling a Loop

- Create a simple loop by calling `Kernel#loop` and passing a block to it
- `break` will exit the nearest loop
- If loop needs to execute more than once, use a conditional statement to call `break` when the condition is met

```ruby
loop do
  number = rand(1..10) # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end
```

#### Iteration

- To iterate a specific number of times, can use a counter variable to track iteration number

```ruby
counter = 0

loop do
  puts 'Hello!'
  counter += 1
  break if counter == 5
end
```

- Counter needs to be incremented every loop to track number of iterations
- Counter must be initialized before the loop, otherwise it will be reset each iteration and `break` condition won’t be met

#### Break Placement

- `break` placed on the last line of the loop mimics the behavior of a do/while loop
  - The code within the block is guaranteed to execute at least once
- `break` placed on the first line of the loop mimics the behavior of a while loop
  - The code below the `break` or within the `while` loop may not execute

#### Next

- `next` skips the rest of the code within the block and starts the next loop iteration

```ruby
counter = 0

loop do
  counter += 1
  next if counter.odd?
  puts counter
  break if counter > 5
end
```

### Iterating Over Collections

#### String

- Reference each character via its index in the string

```ruby
alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size
  puts alphabet[counter]
  counter += 1
end
```

#### Array

- Reference each element via its index in the array

```ruby
colors = %w[green blue purple orange]
counter = 0

loop do
  break if counter == colors.size
  puts "I'm the color #{colors[counter]}!"
  counter += 1
end
```

#### Hash

- Multi step process: create array of keys, iterate over each key in the array, get value using the key

```ruby
number_of_pets = { 'dogs' => 2, 'cats' => 4, 'fish' => 1 }
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
counter = 0

loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end
```

### Summary

- Looping comprises four basic elements:
  1. A loop
  2. A counter
  3. A way to retrieve the current value
  4. A way to exit the loop
- It is important to understand how to manually loop over collections with nothing more than these four tools
- Methods can be useful, but they shouldn’t be used as a crutch

## Introduction to PEDAC Process

- The PEDAC process is an approach to solving programming problems
- The primary goal is to help identify and avoid pitfalls that occur when coding without intent
- PEDAC
  1. **P** - [Understand the] **P**roblem
  2. **E** - **E**xamples / Test cases
  3. **D** - **D**ata Structure
  4. **A** - **A**lgorithm
  5. **C** - **C**ode
- This assignment discusses a "lighter" version of PEDAC useful for passing upcoming interview assessment
  - PEDAC discussed in more detail later in the course
- Following the PEDAC process saves time and allows solving complex problems efficiently

### P - [Understand the] Problem

- Understanding the problem has three steps:
  1. Read the problem description
  2. Check the test cases, if any
  3. If any part of the problem is unclear, ask the interviewer or problem requester to clarify
- One of the most important and overlooked questions is whether to return the original object or a new object
- Always verify your assumptions either by looking at the test cases or by asking the interviewer
- Conclude this part of the PEDAC process by writing down the inputs, outputs, and rules (explicit and implicit requirements)

```text
# input: string
# output: string (not the same object)
# rules:
#      Explicit requirements:
#        - every palindrome in the string must be converted to uppercase.
#          (Reminder: a palindrome is a word that reads the same forwards and
#          backward).
#        - Palindromes are case sensitive ("Dad" is not a palindrome, but
#          "dad" is.)

#      Implicit requirements:
#        - the returned string shouldn't be the same string object.
#        - if the string is an empty string, the result should be an empty
#          array
```

### Data Structure / Algorithm

- Data structures influence the algorithm, thus the two steps are often paired
- Biggest problem students have when writing algorithms is providing sufficient detail
- Formal pseudocode is an intermediary step between informal pseudocode and final code

```text
# input: a string
# output: an array of substrings
# rules: palindrome words should be case sensitive, meaning "abBA" is not a
#        palindrome

# Algorithm:
#  substrings method
#  =================
#  - create an empty array called `result` that will contain all required
#    substrings
#  - create a `starting_index` variable (value `0`) for the starting index of
#    a substring
#  - start a loop that iterates over `starting_index` from `0` to the length
#    of the string minus 2
#    - create a `num_chars` variable (value `2`) for the length of a substring
#    - start an inner loop that iterates over `num_chars` from `2` to `string.
#      length - starting_index`
#      - extract a substring of length `num_chars` from `string` starting at
#        `starting_index`
#      - append the extracted substring to the `result` array
#      - increment the `num_chars` variable by `1`
#    - end the inner loop
#    - increment the `starting_index` variable by `1`
#  - end the outer loop
#  - return the `result` array

#  is_palindrome? method
#  =====================
#  - Inside the `is_palindrome?` method, check whether the string
#    value is equal to its reversed value. You can use the
#    String#reverse method.

#  palindrome_substrings method
#  ============================
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array
```

- It isn’t needed but can be helpful
- Example of complete informal pseudocode:
- Main takeaway: should be able to write a plain English solution to the problem
- Also, don’t need “fancy” methods to solve the problems

### Testing Frequently

- Testing isn’t properly part of PEDAC but it is important and shouldn’t be skipped
- Test code early and often while writing
- Test code as soon as it can be tested
- The sooner a bug is identified the easier it is to identify what’s wrong

### Summary

- Practice working through PEDAC while solving problems
- It may be difficult at first but will improve in time and make solving difficult problems easier

**\*Informal Pseudocode Outline/Template**

```text
input: input 1, ...
output: output
rules:
Explicit requirements:
- Req 1
...
Implicit requirements:
- Req 1
...

Algorithm:
First method:
- Step 1
...
Second method:
- Step 1
...
```

## The PEDAC Problem Solving Process

### P: Understanding the Problem

- Establish the rules and define the boundaries of the problem
  - Assess available information
  - Restate explicit requirements
  - Identify implicit requirements
- Spend enough time: don’t rush this step!

### E: Examples and Test Cases

- Can confirm or refute assumptions
- Help to answer questions about implicit requirements
- Act as assertions that help codify the rules and boundaries

### D: Data Structures

- Help reason with data logically
- Help interact with data at the implementation level
- Thinking in terms of data structures is part of the problem solving process
- Data structures closely linked to the algorithm
  - An algorithm is a set of steps from input to output
  - Involves structuring data in a certain way

### A: Algorithms

- A logical sequence of steps for accomplishing a task
  - Closely linked to data structures
  - Series of steps to structure data and produce the required output
- Stay abstract and high-level
  - Avoid implementation details
  - Don’t worry about efficiency for now

### C: Implementing a Solution in Code

- Translate algorithm solution to code
- Think about algorithm in context of the programming language
  - Language features and constraints
  - Characteristics of data structures
  - Built in functions and methods
  - Syntax and coding patterns
- Create test cases
- Code with intent

### Final Thoughts

- Not a completely linear process
- Move back and forth between the steps
- Switch from implementation to abstract problem solving mode when necessary
- Don’t try to problem solve at the code level

## Selection and Transformation

- Selection and transformation utilize the basics of looping
  1. a loop
  2. a counter
  3. a way to retrieve the current value
  4. a way to exit the loop
- Selection and transformation require additional criteria
  - Selection uses the criteria to determine which elements to select
  - Transformation uses the criteria to determine how to transform the elements
- When performing transformations, it’s important to pay attention to whether the original collection is mutated or a new collection is returned
- [select_fruit.rb](select_fruit.rb)
- Mutate argument instead of returning new array

```ruby
def double_numbers(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2

    counter += 1
  end

  numbers
end
```

- Transform the numbers based on their position in the array rather than their value

```ruby
def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end
```

- Multiply every array item by a specified value

```ruby
def multiply(numbers, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    multiplied_numbers << numbers[counter] * multiplier
    counter += 1
  end

  multiplied_numbers
end
```

- It’s common to chain actions on on collections but attentions must be paid to the return value, especially if the return value is an empty collection or `nil`

## Methods

- Built-in Ruby methods provide an easier way to work with collections than `loop` and `for`
- This section specifically looks at `each`, `select`, `map`

### `each`

- `each` method is functionally equivalent to using `loop` but provides a simpler way of accomplishing the same task
- For an **array**, `each` requires a single argument and assigns the current element to the argument for each iteration

<!-- prettier-ignore -->
```ruby
[1, 2, 3].each do |num|
  puts num
end
```

- For a **hash**, `each` requires two arguments and assigns the current element’s key to the first argument and the value to the second argument for each iteration

<!-- prettier-ignore -->
```ruby
hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end
```

- A significant difference between `each` and `loop` is the return value:
  - `loop` returns `nil`
  - `each` returns the original collection

### `select`

- `select` performs iteration and selection over a collection

<!-- prettier-ignore -->
```ruby
[1, 2, 3].select do |num|
  num.odd?
end
```

- `select` evaluates the return value of the block at each iteration
  - If the return value is "truthy," the element is selected
  - if the return value is "falsey," the element is not selected
- The return value of `select` is a new collection containing all the selected elements
- When working with `select` it’s important to always be aware of the return value of the block
  - For example: the following will always return an empty array because puts returns `nil`

```ruby
[1, 2, 3].select do |num|
  num + 1
  puts num
end
```

### `map`

- `map` iterate over a collection and performs transformation on the elements
- `map` uses the return value of the block to populate a new collection

<!-- prettier-ignore -->
```ruby
[1, 2, 3].map do |num|
  num * 2
end
```

- Key takeaway: `map` **always** performs transformation based on the return value of the block

### Side Note

- `Array` and `Hash` both have an `each` method
- `select` and `map` are are defined in **Enumerable** and are made available to `Array` and `Hash`
- The important thing to understand at this stage is that certain collection types have access to specific methods for a reason

### Summary

- Methods like `each`, `select`, and `map` are provided by Ruby to allow for simpler implementations of common collection manipulation tasks
- Using these methods is preferred over manually looping

| Method | Action         | Considers block return value? | Returns new collection?  | Returned collection length |
| ------ | -------------- | ----------------------------- | ------------------------ | -------------------------- |
| each   | Iteration      | No                            | No, returns the original | Length of original         |
| select | Selection      | Yes, its truthiness           | Yes                      | Length of original or less |
| map    | Transformation | Yes                           | Yes                      | Length of original         |

## More Methods

### `Enumerable#any?`

- Returns `true` if the block’s return value is "truthy" for any element in the collection

<!-- prettier-ignore -->
```ruby
[1, 2, 3].any? do |num|
  num > 2
end
# => true
```

### `Enumerable#all?`

- returns `true` if the block’s return value is "truthy" for every element in the collection

<!-- prettier-ignore -->
```ruby
[1, 2, 3].all? do |num|
  num > 2
end
# => false
```

### `Enumerable#each_with_index`

- Is identical to `each` but takes a second argument that represents the index of the element

<!-- prettier-ignore -->
```ruby
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end
# => [1, 2, 3]
```

### `Enumerable#each_with_object`

- Is like `each` but takes a method argument that is a collection object that will be returned by the method
- The block also takes a second argument that represents the collection object

<!-- prettier-ignore -->
```ruby
[1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end
# => [1, 3]
```

### `Enumerable#first`

- Doesn’t take a block but does take an optional argument that represents the number of elements to return, which defaults to one if no argument give

```ruby
[1, 2, 3].first(2)
# => [1, 2]
```

### `Enumerable#include?`

- Returns `true` if the argument exists in the collection

```ruby
[1, 2, 3].include?(1)
# => true
```

- When called on a hash, `include?` only checks the keys
- Rubyists would usually prefer to use `Hash#key?` or `Hash#has_key?` for hashes as the intention is more explicit
- To find values the `Hash#value?` or `Hash#has_value?` methods could be used

### `Enumerable#partition`

- Divides elements in a collection into two collections
- The most idiomatic way to use `partition` is to parallel assign variables to capture the inner arrays

<!-- prettier-ignore -->
```ruby
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

odd  # => [1, 3]
even # => [2]
```

## Practice Problems

- [practice-problems-methods.md](practice-problems-methods.md)
- [practice-problems-additional.md](practice-problems-additional.md)

[rb101-notes]: /rb101/rb101-notes.md
[readme]: /README.md
[launch-school]: https://launchschool.com
