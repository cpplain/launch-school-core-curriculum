# Introduction to Programming with Ruby

Notes for [Introduction to Programming with Ruby](https://launchschool.com/books/ruby) from Launch School’s RB100 course.

## Introduction

**Abstraction**
* Hides details of lower layers

## Preparations

### Chapter notes

**Documentation**
* https://ruby-doc.org/core-2.7.2/
* `::` denotes class methods
* `#` denotes instance methods
* `::` and `#` use in code is completely different from use in documentation
* Included Modules - additional modules whose methods are avaialable to the class

**Gems**
* https://rubygems.org/
* `gem install <gem name>`

**Debugging with Pry**
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

### Chapter notes

**String interpolation**
* `#{ruby expression}`

**Symbols**
* Created by placing a colon (`:`) before a word
```ruby
# Examples of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"
```

**Numbers**
* `Integer`
* `Float`

**nil**
* `.nil?` check if nil
* `nil` evaluates to false in conditional expression
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

**Modulo vs. Remainder**
* Further studty
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

**Type Conversion**
* `.to_i` convert to `Integer`
* `.to_f` convert to `Float`
* `.to_s` convert to `String`

**Basic Data Structures**
* `Array` `[]`
* `Hash` `{}`

**Expressions and Return**
* Ruby expressions always return a value, even if the value is nil or an error

### Exercises
* [exercises.rb](03_the_basics/exercises.rb)
