[Launch School Core Curriculum](/README.md) >
[RB100 Programming and Back-end Prep](/rb100/rb100_notes.md) >
[Introduction to Programming with Ruby](/rb100/introduction_to_programming_with_ruby/introduction_to_programming_with_ruby_notes.md) >
Variables

# Variables

Notes for [Variables](https://launchschool.com/books/ruby/read/variables) chapter of [Launch School](https://launchschool.com)’s [Introduction to Programming with Ruby](https://launchschool.com/books/ruby).

## Getting Data from a User
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

## Variable Scope
* Scope determines where a variable is available for use
* A variable’s scope is determined by where the variable is initialized or created
* In Ruby, scope is defined by a block (a piece of code following a method invocation, usually delimited by `{}` or `do/end`
* Inner scopes can access variables in an outer scope but not vice versa

## Types of Variables
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

## Exercises
1. [name.rb](name.rb)
1. [age.rb](age.rb)
1. [name.rb](name.rb)
1. [name.rb](name.rb)
1. The first prints `3` and the second throws an `undefined local variable or method` error because `x` is out of scope
