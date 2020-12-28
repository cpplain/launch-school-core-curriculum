# Introduction to Programming with Ruby

Notes for [Introduction to Programming with Ruby](https://launchschool.com/books/ruby) from Launch School’s RB100 course.

## Contents
* [Introduction](#introduction)
* [Preparations](#preparations)
* [The Basics](#the-basics)
* [Variables](#variables)
* [Methods](#methods)
* [Flow Control](#flow-control)
* [Loops & Iterators](#loops-&-iterators)

## Introduction

### Abstraction
* Hides details of lower layers

## Preparations

### Documentation
* https://ruby-doc.org/core-2.7.2/
* `::` denotes class methods
* `#` denotes instance methods
* `::` and `#` use in code is completely different from use in documentation
* **Included Modules**: additional modules whose methods are avaialable to the class

### Command Line and irb
* Exercise: [hello_world.rb](preparations/hello_world.rb)

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
```ruby
irb :001 > if nil
irb :002 > puts "Hello, World!"
irb :003 > end
=> nil
```
* `nil` is not equivalent to `false`
```ruby
irb :001 > false == nil
=> false
```

### Modulo vs Remainder
* Effect summarized:
  * Modulo returns a positive integer when the divisor is positive and a negative integer when the divisor is negative
  * Remainder returns a positive integer when the dividnd is positive and a negative integer when the dividend is negative

|   a |   b | a % b (modulo) | a.remainder(b) | a.divmod(b) |
| --: | --: |            --: |            --: | :--         |
|  17 |   5 |              2 |              2 | [3, 2]      |
|  17 |  -5 |             -3 |              2 | [-4, -3]    |
| -17 |   5 |              3 |             -2 | [-4, 3]     |
| -17 |  -5 |             -2 |             -2 | [3, -2]     |

* Further study:
  * https://en.wikipedia.org/wiki/Modulo_operation

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
1. [exercise_1.rb](basics/exercise_1.rb)
1. [exercise_2.rb](basics/exercise_2.rb)
1. [exercise_3.rb](basics/exercise_3.rb)
1. [exercise_4.rb](basics/exercise_4.rb)
1. [exercise_5.rb](basics/exercise_5.rb)
1. [exercise_6.rb](basics/exercise_6.rb)
1. The error indicates there is an opening bracket in the program without a matching closing bracket

## Variables

### Getting Data from a User
* `gets`
```ruby
irb :001 > name = gets
Bob
=> "Bob\n"
```
* Remove newline with `.chomp`
```ruby
irb :001 > name = gets.chomp
Bob
=> "Bob"
```

### Variable Scope
* Scope determines where a variable is available for use
* A variable’s scope is determined by where the variable is initialized or created
* In Ruby, scope is defined by a block (a piece of code following a method invocation, usually delimited by `{}` or `do/end`
* Inner scopes can access variables in an outer scope but not vice versa

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
* `@instance_variable`
  * Available to instance of class
  * Can cross some scope boundaries (more to come in OOP)
* `local_variable`
  * Obey all scope boundaries

### Exercises
1. [name.rb](variables/name.rb)
1. [age.rb](variables/age.rb)
1. [name.rb](variables/name.rb)
1. [name.rb](variables/name.rb)
1. The first prints `3` and the second throws an `undefined local variable or method` error because `x` is out of scope

## Methods

### What Are Methods?
* Procedure that allows reusable code to be extracted into one place
* Parameter and argument
  * Parameter is part of the method definition
  * Arguement is passed to a method when called
* Default parameters used if no argument passed
```ruby
def say(words='hello')
  puts words + '.'
end
```
### obj.method or method(obj)
* Two ways to call methods:
  * `method(obj)`
  * `obj.method` (explicit caller)

### Mutating the Caller
* Calling a method and permanently altering the argument is **mutaing the caller**
* Exercise: [mutate.rb](methods/mutate.rb)
* Ruby is a pass-by-value and pass-by-reference language

### puts vs return
* Every method in Ruby returns the evaluated result of the last line executed
* Exercise: [return.rb](methods/return.rb)
* Ruby methods return the evaluated result of the last line, unless an explicit return comes before it
* Main take away: the `return` reserved word is not required in order to return something from a method

### Chaining Methods
* Chaining is possible because every method call returns something
```ruby
"hi there".length.to_s  # returns "8" - a String
```
* If anywhere along the chain there is a `nil` or an exception is thrown, the entire chained call will break

### Method Calls as Arguments
* Ruby allows passing method calls as arguments to other methods
* `multiply(add(20, 45), subtract(80, 10))`
* Use of parentheses in nested method calls is important to prevent confusion

### The Call Stack
* Blocks, procs, and lambdas use the call stack in Ruby in addition to methods
```ruby
def first
  puts "first method"
end

def second
  first
  puts "second method"
end

second
puts "main method"
```

| Call Stack     |
| ---            |
| puts           |
| first: line 2  |
| second: line 6 |
| main: line 10  |

* If the stack runs out of room, a `SystemStackError` exception is thrown

### Exercises
1. [exercise_1.rb](methods/exercise_1.rb)
1. `2`, `nil`, `"Joe"`, `"four"`, `nil`
1. [exercise_3.rb](methods/exercise_3.rb)
1. The code will not print anything to the screen
1. [exercise_5.rb](methods/exercise_5.rb)
   1. The code returns `nil`
1. The error indicates `calculate_product` requires two arguments but only one was given

## Flow Control

### Conditionals
* Basic logic stuctures defined with `if`, `else`, `elsif`, and `end`
* Comparison and logical operators are `<`, `>`, `<=`, `>=`, `==`, `!=`, `&&`, `||`
* Exercise: [conditional.rb](flow_control/conditional.rb)
```ruby
if x == 3
  puts "x is 3"
end

if x == 3 then puts "x is 3" end

puts "x is 3" if x == 3

puts "x is NOT 3" unless x == 3
```

### Comparisons
* Comparison operators always return a boolean value (`true` or `false`)
* The expressions to the left and right of the operator are the operands
* `==` is equal to
* `!=` not equal to
* `<` less than
* `>` greater than
* `<=` less than or equal to
* `>=` greater than or equal to

### Combining Expressions
* It is possible to combine multiple conditional expressions
* `&&` and
  * `(4 == 4) && (5 == 5)`
* `||` or
  * `(4 == 4) || (5 == 5)`
* `!` not
  * `!(4 == 4)` => false
* Order of precedence
  1. `<=`, `<`, `>`, `>=` (comparison)
  1. `==`, `!=` (equality)
  1. `&&` (logical AND)
  1. `||` (logical OR)
* It is helpful to group expressions together by parentheses for readability to ensure evaluation order
  * Parenthese evalauted in normal algebraic order

### Ternary Operator
* Ternary operator is a Ruby idiom that makes a quick `if/else` statement on one line
```ruby
irb :001 > true ? "this is true" : "this is not true"
=> "this is true"

irb :001 > false ? "this is true" : "this is not true"
=> "this is not true"
```

### Case Statement
* A **case statement** has similar functionality to an `if` statement
* User reserved words `case`, `when`, `else`, and `end`
* Exercise: [case_statement.rb](flow_control/case_statement.rb)
* Can save results of the case statement into a variable
* Option to use without arguement but `if/else` is preferred, except for a few situations

### True and False
* In Ruby, every expression evaluates to `true` when used in flow control, except `false` and `nil`

### Exercises
1. `false`, `false`, `false`, `true`, `true`
1. [exercise_2.rb](flow_control/exercise_2.rb)
1. [exercise_3.rb](flow_control/exercise_3.rb)
1. `FALSE`, `Did you get it right?`, `Alright now!`
1. The error is returned because the `if` statement is missing the `end` reserved word
1. Raises error, raises error, `false`, `true`, `false`, `true`

## Loops & Iterators

### A Simple Loop
* `loop` the simplest way to create a loop in Ruby
* Exercise: [loop_example.rb](loops_and_iterators/loop_example.rb)
* Not likely to use in a real program as an infinite loop is not very useful and will result in a crash

### Controlling Loop Execution
* More useful by using `break` to exit loop
* Exercise: [useful_loop.rb](loops_and_iterators/useful_loop.rb)
* Can conditionally exit using an `if` statement
* Exercise: [conditional_loop.rb](loops_and_iterators/conditional_loop.rb)
* Similar to `break`, use `next` to skip the rest of the current iteration and move to the next iteration
* Exercise: [next_loop.rb](loops_and_iterators/next_loop.rb)

### While and Until Loops
* A **while loop** is given a parameter that evaluates to a boolean and executes until the boolean is `false`
* Exercise: [countdown.rb](loops_and_iterators/countdown.rb)

### Do/While Loops
* A **do/while loop** works in a similar way to a while loop but code within the loop gets executed at least once
* The conditional check is placed at the end of the loop as opposed to the beginning
```ruby
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end
```
* The following works but is not recommended by Matz, the founder of Ruby
```ruby
begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'
```

### For Loops
* Used to loop over a collection of elements
* Not possible to create an infinite loop, loops over finite number of elements
```ruby
x = gets.chomp.to_i

for i in 1..x do
  puts i
end

puts "Done!"
```
* Range (`..`) used in example above
* For loop returns the collection of elements after it executes

### Conditionals Within Loops
* The reserved words `next` and `break` are useful when looping
* The `next` reserved word will jump from to the next loop iteration without executing the code beneath it
```ruby
while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end
```
* The `break` reserved word will exit the loop immediately without executing any further code in the loop
```ruby
while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end
```
* Most Rubyists prefer iterators instead of loops where possible

### Iterators
* **Iterators** are methods that loop over a given set of data and allow operations on each element in the collection
* Two styles of blocks:
  * Use curly braces (`{}`) when everything can be contained in one line
  * Use reserved words `do` and `end` for multi-line operations
```ruby
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }

x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
```

### Recursion
* **Recursion** is the act of calling a method from within itself
* Example: calculate the nth number in the fibonacci sequence
```ruby
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)
```
* The key concept with recursion is there is a baseline condition that returns a value that unwinds the recursive call

### Exercise
1. Returns `[1, 2, 3, 4, 5]`
1. [exercise_2.rb](loops_and_iterators/exercise_2.rb)
1. [exercise_3.rb](loops_and_iterators/exercise_3.rb)
