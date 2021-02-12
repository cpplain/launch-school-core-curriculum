[Launch School Core Curriculum](/README.md) >
[RB101 Programming Foundations](/rb101/rb101_notes.md) >
Lesson 4: Ruby Collections

# Lesson 4: Ruby Collections

Notes for Lesson 4 of [Launch School’s](https://launchschool.com) RB101 course.

## Contents

- [Introduction](#introduction)
- [Collections Basics](#collections-basics)
- [Looping](#looping)
- [Introduction to PEDAC Process](#introduction-to-pedac-process)

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

  ```ruby
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

  ```ruby
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
