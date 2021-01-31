[Launch School Core Curriculum](/README.md) >
[RB101 Programming Foundations](/rb101/rb101_notes.md) >
Lesson 4: Ruby Collections

# Lesson 4: Ruby Collections

Notes for Lesson 4 of [Launch School’s](https://launchschool.com) RB101 course.

## Contents
* [Introduction](#introduction)
* [Collections Basics](#collections-basics)

## Introduction
* Programming involves working with data
* **Collections** are structured containers for storing data
* This lesson will focus on three of the most commonly used collections in Ruby: `String`, `Array`, and `Hash`

## Collections Basics

### Element Reference

#### String Element Reference
* Strings use an integer-based index, starting from zero, that represents each character in the string
* `str[0]` reference a specific character by passing character index
* `str[0, 3]` reference multiple characters by passing the starting index and the number of characters to return
  `String#[s, l]` is an alias for `#slice`

#### Array Element Reference
* Arrays are an ordered list of elements, using a zero-based index
* `arr[0]` reference a specific element by passing the element index
* `arr[0, 3]` reference multiple elements by passing the starting index and the number of elements to return
  * `Array#[s, l]` is a alias for `#slice`

#### Hash Element Reference
* Hashes are a collection data structure, using key-value pairs
* Keys and values can be any type of Ruby object
* `hsh['fruit']` values accessed by passing the key
* `#keys` returns an array of keys
* `#values` returns an array of values
* It's common practice to use symbols as keys

### Element Reference Gotchas

#### Out of Bounds Indices
* Referencing an out of bound index returns `nil`
* Not necessarily a problem for strings but can be confusing for arrays
* `#fetch` throws an `IndexError` exception if index is out of bounds
* `#fetch` is saffest but rarely used in Ruby code

#### Negative Indices
* Characters in strings and elements in arrays can be accessed using negative indices
* `-1` for the last character/element and working backwards

#### Invalid Hash Keys
* Invalid hash key will return `nil`
* Hash has a `#fetch` method that throws a `KeyError` exception if a key is invalide

### Conversion
* The similarities between strings and arrays lend to converting between one and the other
* This is common in Ruby, and there are a number of methods to facilitate conversion
* `String#chars` returns an array of individual characters
* `Array#join` returns a string with the elements of the array joined
* `String#split` returns an array of substrings based on a delimiter
* `Hash#to_a` returns an array containing an array for each key-value pair
* `Array#to_h` returns a hash from an array containing arrays of key-value pairs

### Element Assignment

#### String Element Assignment
* The element assignment notation of string can be used to change the value of a specific character
* `str[0] = 'c'` assigns the character 'c' to the first character in the string
* This method is destructive (i.e, it mutates the string)

#### Array Element Assignment
* Elements can be assigned to an array similar to strings
* `arr[0] = 1` assigns 1 to the first element of the array

#### Hash Element Assignment
* Hash assignment is done passing the key instead of the index
* `hsh[:apple] = 'Fruit'` assigns the value 'Fruit' to the key `:apple`
