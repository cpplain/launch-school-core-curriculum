[Launch School Core Curriculum][readme] >
[RB100 Programming and Back-end Prep][rb100] >
[Introduction to Programming with Ruby][intro-notes] >
Introduction and Preparations

# Introduction and Preparations

Notes for Introduction and Preparations chapters of [Launch School's][launch-school] [Introduction to Programming with Ruby][intro-to-ruby].

## Introduction

### Abstraction

- Hides details of lower layers

## Preparations

### Documentation

- https://docs.ruby-lang.org/en/
- `::` denotes class methods.
- `#` denotes instance methods.
- `::` and `#` use in code is completely different from use in documentation.
- **Included Modules** - additional modules whose methods are available to the class.

### Command Line and irb

- [hello_world.rb](hello_world.rb)

### Gems

- https://rubygems.org/
- `gem install <gem name>`

### Debugging with Pry

`gem install pry`

```ruby
# preparation.rb
require "pry"

a = [1, 2, 3]
a << 4
binding.pry # execution will pause here, allowing you to inspect all objects
puts a
```

<!-- internal links -->

[intro-notes]: /books/introduction_to_programming_with_ruby/contents.md
[rb100]: /rb100/notes.md
[readme]: /README.md

<!-- external links -->

[intro-to-ruby]: https://launchschool.com/books/ruby
[launch-school]: https://launchschool.com
