[Launch School Core Curriculum][readme] >
[RB100 Programming and Back-end Prep][rb100] >
[Introduction to Programming with Ruby][intro-notes] >
Methods

# Methods

Notes for Methods chapter of [Launch School's][launch-school] [Introduction to Programming with Ruby][intro-to-ruby].

## What Are Methods?

- Procedure that allows reusable code to be extracted into one place.
- Parameter and argument:
  - Parameter is part of the method definition.
  - Argument is passed to a method when called.
- Default parameters used if no argument passed.

```ruby
def say(words = "hello")
  puts words + "."
end
```

## obj.method or method(obj)

- Two ways to call methods:
  - `method(obj)`
  - `obj.method` (explicit caller)

## Mutating the Caller

- Calling a method and permanently altering the argument is **mutating the caller**.
- [mutate.rb](mutate.rb)
- Ruby is a **pass-by-value** and **pass-by-reference** language.

## puts vs return

- Every method in Ruby returns the evaluated result of the last line executed.
- [return.rb](return.rb)
- Ruby methods return the evaluated result of the last line, unless an explicit return comes before it.
- Main take away: the `return` reserved word is not required in order to return something from a method.

## Chaining Methods

- Chaining is possible because every method call returns something.

```ruby
"hi there".length.to_s # returns "8" - a String
```

- If anywhere along the chain there is a `nil` or an exception is thrown, the entire chained call will break.

## Method Calls as Arguments

- Ruby allows passing method calls as arguments to other methods.
- Use of parentheses in nested method calls is important to prevent confusion.

```ruby
multiply(add(20, 45), subtract(80, 10))
```

## The Call Stack

- Blocks, procs, and lambdas use the call stack in Ruby in addition to methods.
- If the stack runs out of room, a `SystemStackError` exception is thrown.

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
| -------------- |
| puts           |
| first: line 2  |
| second: line 6 |
| main: line 10  |

## Exercises

1. [exercise_1.rb](exercise_1.rb)
2. `2`, `nil`, `"Joe"`, `"four"`, `nil`
3. [exercise_3.rb](exercise_3.rb)
4. The code will not print anything to the screen.
5. [exercise_5.rb](exercise_5.rb)
   1. The code returns `nil`
6. The error indicates `calculate_product` requires two arguments but only one was given.

<!-- internal links -->

[intro-notes]: /books/introduction_to_programming_with_ruby/contents.md
[rb100]: /rb100/notes.md
[readme]: /README.md

<!-- external links -->

[intro-to-ruby]: https://launchschool.com/books/ruby
[launch-school]: https://launchschool.com
