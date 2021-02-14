[Launch School Core Curriculum][readme] >
[RB100 Programming and Back-end Prep][rb100-notes] >
[Introduction to Programming with Ruby][ruby-intro-notes] >
The Basics

# The Basics

Notes for The Basics chapter of [Launch School’s][launch-school] [Introduction to Programming with Ruby][ruby-intro-book].

## String Interpolation

```ruby
"#{ruby expression}"
```

## Symbols

- Created by placing a colon (`:`) before a word

```ruby
:name
:a_symbol
:"surprisingly, this is also a symbol"
```

## Numbers

- `Integer`
- `Float`

## nil

- `.nil?` check if `nil`
- `nil` evaluates to `false` in conditional expressions

```ruby
irb :001 > if nil
irb :002 > puts "Hello, World!"
irb :003 > end
=> nil
```

- `nil` is not equivalent to `false`

```ruby
irb :001 > false == nil
=> false
```

## Modulo vs Remainder

- Effect summarized:

|   a |   b | a % b (modulo) | a.remainder(b) | a.divmod(b) |
| --: | --: | -------------: | -------------: | :---------- |
|  17 |   5 |              2 |              2 | [3, 2]      |
|  17 |  -5 |             -3 |              2 | [-4, -3]    |
| -17 |   5 |              3 |             -2 | [-4, 3]     |
| -17 |  -5 |             -2 |             -2 | [3, -2]     |

- Modulo returns a positive integer when the divisor is positive and a negative integer when the divisor is negative
- Remainder returns a positive integer when the dividend is positive and a negative integer when the dividend is negative

- Further study:
  - https://en.wikipedia.org/wiki/Modulo_operation

## Type Conversion

- `.to_i` convert to `Integer`
- `.to_f` convert to `Float`
- `.to_s` convert to `String`

## Basic Data Structures

- `Array` `[]`
- `Hash` `{}`

## Expressions and Return

- Ruby expressions always return a value, even if the value is `nil` or an error

## Exercises

1. [exercise_1.rb](exercise_1.rb)
2. [exercise_2.rb](exercise_2.rb)
3. [exercise_3.rb](exercise_3.rb)
4. [exercise_4.rb](exercise_4.rb)
5. [exercise_5.rb](exercise_5.rb)
6. [exercise_6.rb](exercise_6.rb)
7. The error indicates there is an opening bracket in the program without a matching closing bracket

[rb100-notes]: /rb100/rb100-notes.md
[readme]: /README.md
[ruby-intro-notes]: /rb100/introduction_to_programming_with_ruby/introduction-to-programming-with-ruby-notes.md
[launch-school]: https://launchschool.com
[ruby-intro-book]: https://launchschool.com/books/ruby
