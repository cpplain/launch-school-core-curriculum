[Launch School Core Curriculum](/README.md) >
[RB100 Programming and Back-end Prep](/rb100/rb100_notes.md) >
[Introduction to Programming with Ruby](/rb100/introduction_to_programming_with_ruby/introduction_to_programming_with_ruby_notes.md) >
More Stuff!

# More Stuff!

Notes for [More Stuff!](https://launchschool.com/books/ruby/read/more_stuff) chapter of [Launch School’s](https://launchschool.com) [Introduction to Programming with Ruby](https://launchschool.com/books/ruby).

## Regex
* **Regular expression** (**regex**) are pattern matching rules used to find patterns in strings
* `=~` or `.match()` to check for a match
```ruby
"powerball" =~ /b/
 /b/.match("powerball")
```

## Ruby Standard Classes
* Usually best to look first to Ruby's standard classes for needed functionality before implementing custom solutions
* For example:
  * `Math.sqrt()`
  * `Math::PI`
* No point in reinventing the wheel

## Variables as Pointers
* Important to keep in mind that variables are pointers to memory
* If two or more variables point to the same object in memory and the object is mutated, all variables will reflect the change
  * Reassigning one of the variables does not affect the others as the reassigned variable points to a new object and the others still point to the previous object
* Keeping this concept in mind is important when debugging issues

## Blocks and Procs
* Blocks can be passed into methods just like normal variables
```ruby
def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end
```
* **Procs** are blocks wrapped in a proc object and stored in a variable to be passed around
* Procs can take arguments
```ruby
talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"
```
* Procs can be passed into methods
```ruby
def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)
```

## Exception Handling
* **Exception handling** is a specific process to handle errors
* Ruby has an `Exception` class to make handling errors easier
* Exception handling syntax uses the reserved words `begin`, `rescue`, and `end`
```ruby
begin
  # perform an operation
rescue
  # do this if operation fails
  # for example: log the error
end
```
* `rescue` can be used inline as well
```ruby
zero = 0
zero.each { |element| puts element } rescue puts "Can't do that!"
```
* Can also rescue pre-existing errors
```ruby
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end
```

## Exceptions and Stack Traces
* When an exception is raised execution will halt unless there is code in place to rescue the exception (see previous section)
* Ruby has built-in exceptions
* Some common excpetions are:
```ruby
StandardError
TypeError
ArgumentError
NoMethodError
RuntimeError
SystemCallError
ZeroDivisionError
RegexpError
IOError
EOFError
ThreadError
ScriptError
SyntaxError
LoadError
NotImplementedError
SecurityError
```
* Stack trace relies on Ruby's call stack, which was discussed in the [Methods](methods/notes.md) chapter
```ruby
greeting.rb:2:in `space_out_letters': undefined method `split' for 1:Integer (NoMethodError)
from greeting.rb:6:in `greet' from greeting.rb:10:in `decorate_greeting'
from greeting.rb:14:in `<main>'
```

## Exercises
1. [exercise_1.rb](exercise_1.rb)
1. Nothing is printed because the block is not called (`.call`); returns a `Proc` object
1. Exception handling is a way to handle and control errors without exiting the program
1. [exercise_4.rb](exercise_4.rb)
1. The method definition is missing the `&` before the `block` parameter
