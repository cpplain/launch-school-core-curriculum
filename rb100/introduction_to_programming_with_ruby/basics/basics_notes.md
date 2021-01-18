[Launch School Core Curriculum](/README.md) >
[RB100 Programming and Back-end Prep](/rb100/rb100_notes.md) >
[Introduction to Programming with Ruby](/rb100/introduction_to_programming_with_ruby/introduction_to_programming_with_ruby_notes.md) >
The Basics

# The Basics

Notes for [The Basics](https://launchschool.com/books/ruby/read/basics) chapter of [Launch School’s](https://launchschool.com) [Introduction to Programming with Ruby](https://launchschool.com/books/ruby).

## String Interpolation
```ruby
"#{ruby expression}"
```

## Symbols
* Created by placing a colon (`:`) before a word
  ```ruby
  :name
  :a_symbol
  :"surprisingly, this is also a symbol"
  ```

## Numbers
* `Integer`
* `Float`

## nil
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

## Modulo vs Remainder
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

## Type Conversion
* `.to_i` convert to `Integer`
* `.to_f` convert to `Float`
* `.to_s` convert to `String`

## Basic Data Structures
* `Array` `[]`
* `Hash` `{}`

## Expressions and Return
* Ruby expressions always return a value, even if the value is `nil` or an error

## Exercises
1.  [exercise_1.rb](exercise_1.rb)
1.  [exercise_2.rb](exercise_2.rb)
1.  [exercise_3.rb](exercise_3.rb)
1.  [exercise_4.rb](exercise_4.rb)
1.  [exercise_5.rb](exercise_5.rb)
1.  [exercise_6.rb](exercise_6.rb)
1.  The error indicates there is an opening bracket in the program without a matching closing bracket
