[Launch School Core Curriculum](/README.md) >
[RB100 Programming and Back-end Prep](/rb100/rb100_notes.md) >
[Introduction to Programming with Ruby](/rb100/introduction_to_programming_with_ruby/introduction_to_programming_with_ruby_notes.md) >
Flow Control

# Flow Control

Notes for [Flow Control](https://launchschool.com/books/ruby/read/flow_control) chapter of [Launch School](https://launchschool.com)’s [Introduction to Programming with Ruby](https://launchschool.com/books/ruby).

## Conditionals
* Basic logic stuctures defined with `if`, `else`, `elsif`, and `end`
* Comparison and logical operators are `<`, `>`, `<=`, `>=`, `==`, `!=`, `&&`, `||`
* [conditional.rb](conditional.rb)
```ruby
if x == 3
  puts "x is 3"
end

if x == 3 then puts "x is 3" end

puts "x is 3" if x == 3

puts "x is NOT 3" unless x == 3
```

## Comparisons
* Comparison operators always return a boolean value (`true` or `false`)
* The expressions to the left and right of the operator are the operands
* `==` is equal to
* `!=` not equal to
* `<` less than
* `>` greater than
* `<=` less than or equal to
* `>=` greater than or equal to

## Combining Expressions
* It is possible to combine multiple conditional expressions
* `&&` and
```ruby
(4 == 4) && (5 == 5)
```
* `||` or
```ruby
(4 == 4) || (5 == 5)
```
* `!` not
```ruby
!(4 == 4)  # => false
```
* Order of precedence
  1. `<=`, `<`, `>`, `>=` (comparison)
  1. `==`, `!=` (equality)
  1. `&&` (logical AND)
  1. `||` (logical OR)
* It is helpful to group expressions together by parentheses for readability to ensure evaluation order
  * Parenthese evalauted in normal algebraic order

## Ternary Operator
* Ternary operator is a Ruby idiom that makes a quick `if/else` statement on one line
```ruby
irb :001 > true ? "this is true" : "this is not true"
=> "this is true"

irb :001 > false ? "this is true" : "this is not true"
=> "this is not true"
```

## Case Statement
* A **case statement** has similar functionality to an `if` statement
* User reserved words `case`, `when`, `else`, and `end`
* [case_statement.rb](case_statement.rb)
* Can save results of the case statement into a variable
* Option to use without arguement but `if/else` is preferred, except for a few situations

## True and False
* In Ruby, every expression evaluates to `true` when used in flow control, except `false` and `nil`

## Exercises
1. `false`, `false`, `false`, `true`, `true`
1. [exercise_2.rb](exercise_2.rb)
1. [exercise_3.rb](exercise_3.rb)
1. `FALSE`, `Did you get it right?`, `Alright now!`
1. The error is returned because the `if` statement is missing the `end` reserved word
1. Raises error, raises error, `false`, `true`, `false`, `true`

