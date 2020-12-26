# Introduction to Programming with Ruby

Notes for [Introduction to Programming with Ruby](https://launchschool.com/books/ruby) from Launch School’s RB100 course.

## Introduction

### Abstraction
* Hides details of lower layers

## Preparations

### Documentation
* https://ruby-doc.org/core-2.7.2/
* `::` denotes class methods
* `#` denotes instance methods
* `::` and `#` use in code is completely different from use in documentation
* Included Modules: additional modules whose methods are avaialable to the class

### Gems
* https://rubygems.org/
* `gem install <gem name>`

### Debugging with Pry
* `gem install pry`
```ruby
# preparation.rb
require "pry"

a = [1, 2, 3]
a << 4
binding.pry  # execution will pause here, allowing you to inspect all objects
puts a
```
### Exercises
* [hello_world.rb](02_preparations/hello_world.rb)

## The Basics

### String Interpolation
* `"#{ruby expression}"`

### Symbols
* Created by placing a colon (`:`) before a word
```ruby
# Examples of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"
```

### Numbers
* `Integer`
* `Float`

### nil
* `.nil?` check if `nil`
* `nil` evaluates to `false` in conditional expressions
```
irb :001 > if nil
irb :002 > puts "Hello, World!"
irb :003 > end
=> nil
```
* `nil` is not equivalent to `false`
```
irb :001 > false == nil
=> false
```

### Modulo vs. Remainder
* Further study:
  * https://en.wikipedia.org/wiki/Modulo_operation
* Effect summarized:
  * Modulo returns a positive integer when the divisor is positive and a negative integer when the divisor is negative
  * Remainder returns a positive integer when the dividnd is positive and a negative integer when the dividend is negative

a | b | a % b (modulo) | a.remainder(b) | a.divmod(b)
-- | -- | -- | -- | --
17 | 5 | 2 | 2 | [3, 2]
17 | -5 | -3 | 2 | [-4, -3]
-17 | 5 | 3 | -2 | [-4, 3]
-17 | -5 | -2 | -2 | [3, -2]

### Type Conversion
* `.to_i` convert to `Integer`
* `.to_f` convert to `Float`
* `.to_s` convert to `String`

### Basic Data Structures
* `Array` `[]`
* `Hash` `{}`

### Expressions and Return
* Ruby expressions always return a value, even if the value is `nil` or an error

### Exercises
1. [exercise_1.rb](03_the_basics/exercise_1.rb)
1. [exercise_2.rb](03_the_basics/exercise_2.rb)
1. [exercise_3.rb](03_the_basics/exercise_3.rb)
1. [exercise_4.rb](03_the_basics/exercise_4.rb)
1. [exercise_5.rb](03_the_basics/exercise_5.rb)
1. [exercise_6.rb](03_the_basics/exercise_6.rb)
1. There is an opening bracket somewhere in the program without a matching closing bracket

## Variables

### Getting Data from a User
* `gets`
```
irb :001 > name = gets
Bob
=> "Bob\n"
```
* Remove newline with `.chomp`
```
irb :001 > name = gets.chomp
Bob
=> "Bob"
```

### Variable Scope
* Scope determines where in a variable is available for use
* Scope is defined by where the variable is initialized or created
* Scope in Ruby is defined by a block (a piece of code following a method invocation, usually delimited by `{}` or `do/end`
* Inner scope can access variables in an outer scope but not vice versa

### Types of Variables
* `CONSTANT_VARIABLE`
  * Used to store data that never changes
  * Cannot be declared in method definitions
  * Available throughout application's scopes
* `$global_variable`
  * Available throughout application's scopes
  * Rubyists tend to stay away as there can be unexpected complications
* `@@class_variable`
  * Available to the class and instances of the class
  * Must be initialized at the class level, outside of method definitions
* `instance_variable`
  * Available to instance of class
  * Can cross some scope boundaries (more to come in OOP)
* `local_variable`
  * Obey all scope boundaries

### Exercises
1. [name.rb](04_variables/name.rb)
1. [age.rb](04_variables/age.rb)
1. [name.rb](04_variables/name.rb)
1. [name.rb](04_variables/name.rb)
1. The first prints `3` and the second throws an `undefined local variable or method` error because `x` is out of scope
