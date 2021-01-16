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


