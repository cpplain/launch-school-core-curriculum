# Introduction to Programming with Ruby

Notes for Introduction to Programming with Ruby from Launch School’s RB100 course.

## Introduction

**Abstraction**
* Hides details of lower layers

## Preparations

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
* Example:
```ruby
# preparation.rb
require "pry"

a = [1, 2, 3]
a << 4
binding.pry  # execution will pause here, allowing you to inspect all objects
puts a
```