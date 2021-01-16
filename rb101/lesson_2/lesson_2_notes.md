[Launch School Core Curriculum](/README.md) >
[RB101 Programming Foundations](/rb101/rb101_notes.md) >
Lesson 2: Small Programs

# Lesson 2: Small Programs

Notes for Lesson 2 of [Launch School’s](https://launchschool.com) RB101 course.

## Ruby Style
1. Text editor should use two spaces for tabs and indenting should be set to use spaces
2. `#` sign at the beginning of a line signifies everything on the same line is a comment
3. Always use snake_case formatting to define or initialize a method, variable, or file
```ruby
# Naming a file
this_is_a_snake_cased_file.rb

# Assigning a variable
forty_two = 42

# Defining a method
def this_is_a_great_method
  do_some_stuff
end
```
4. Define a constant variable (all uppercase) when value will not change
```ruby
# Constant declaration
FOUR = 'four'
FIVE = 5
```
5. Prefer `{}` when the entire code expression fits on one line
```ruby
# Multi-line vs single line
[1, 2, 3].each do |i|
  do_some_stuff
end

[1, 2, 3].each { |i| do_some_stuff }
```
6. Use **PascalCase** when naming classes
```ruby
class MyFirstClass
end
``` 

## Lecture: Kickoff
* Goal of Ruby lessons
  * Build fluency in language syntax
  * Learn to think like a programmer
  * Learn to build applications
  * Build a debugging mindset
* Summary of topics covered
  * Programming precedurally
  * Testing
  * Blocks
  * Tools
  * Solving problems
  * Developing language familiarity
* Learning to Code vs Learning to Program
  * First, Ruby grammar and syntax (coding)
  * Second, building applications (programming)
  * Jumping between the two is frustrating
  * Tools like pseudo code used to keep this from happening
* Looking for help
  * Search using the “right” phrases
    * Takes time and familiarity
  * Stack Overflow
  * Ruby Docs
* Ask for help
  * Treat instructors, TAs, and fellow students as coworkers (i.e., communicate professionally)
  * Push everything to GitHub
  * Forums
  * Slack
  * TA office hours
* Learning application development
  * Applicablable to all types of app programming (web, mobile, etc.)

## Truthiness
* Ability to express “true” or “false” in any laguage is important
* Helps build conditional logic and understand state of object or expression
* **Boolean** is an object whose purpose is to express “true” or “false”
* Booleans are classes with assocaited methods
```ruby
true.class          # => TrueClass
true.nil?           # => false
true.to_s           # => "true"
true.methods        # => list of methods you can call on the true object

false.class         # => FalseClass
false.nil?          # => false
false.to_s          # => "false"
false.methods       # => list of methods you can call on the false object
```
* `&&` is the “and” operator and will return `true` only if both expressions evaluated are `true`
* `||` is the “or” operator and will return `true` if either of the expressions evaluated are `true`
* Operators stop evaluating expressions once they can guarantee the return value, this is called **short circuiting**
* **Truthiness** differs from `true` in that Ruby considers more than the `true` object to be “truthy”
* Ruby considers everyting to be “truthy” other than `false` and `nil`
* An expression Ruby considers true is not the same as the `true` object
```ruby
name = find_name

if name && name.valid?
  puts "great name!"
else
  puts "either couldn't find name or it's invalid"
end
```

## Walk-through: Calculator
* [calculator.rb](calculator.rb)
* Local variables initialized within an `if` statement can be accessed outside of the statement
* Ruby `if` statements can return a value
```ruby
answer = if true
           'yes'
         else
           'no'
         end
puts answer       # => yes
```
