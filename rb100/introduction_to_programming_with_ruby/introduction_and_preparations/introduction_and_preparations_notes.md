[Launch School Core Curriculum](/README.md) >
[RB100 Programming and Back-end Prep](/rb100/rb100_notes.md) >
[Introduction to Programming with Ruby](/rb100/introduction_to_programming_with_ruby/introduction_to_programming_with_ruby_notes.md) >
Introduction and Preparations

# Introduction and Preparations

Notes for [Introduction](https://launchschool.com/books/ruby/read/introduction) and [Preparations](https://launchschool.com/books/ruby/read/preparations) chapters of [Launch School’s](https://launchschool.com) [Introduction to Programming with Ruby](https://launchschool.com/books/ruby).

## Introduction

### Abstraction
* Hides details of lower layers

## Preparations

### Documentation
* https://docs.ruby-lang.org/en/
* `::` denotes class methods
* `#` denotes instance methods
* `::` and `#` use in code is completely different from use in documentation
* **Included Modules**: additional modules whose methods are avaialable to the class

### Command Line and irb
* [hello_world.rb](hello_world.rb)

### Gems
* https://rubygems.org/
* `gem install <gem name>`

### Debugging with Pry
`gem install pry`
```ruby
# preparation.rb
require "pry"

a = [1, 2, 3]
a << 4
binding.pry  # execution will pause here, allowing you to inspect all objects
puts a
```
