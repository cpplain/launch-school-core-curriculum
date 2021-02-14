[Launch School Core Curriculum][readme] >
RB100 Programming and Back-end Prep

# RB100 Programming and Back-end Prep

Notes for [Launch School’s][launch-school] RB100 course.

## Introduction

- The goal of the prep course is to give you some structure and guidance before starting the program
- Must complete all assignments listed in this course before registering

### How carefully should I go through this Prep course?

- An experienced programmer can likely get through this Prep course quickly, however don’t skip it
- Need to develop muscle memory to type out Ruby code quickly; the practice problems are an excellent way to do that
- The goal in the Launch School program should not be to “get through it” but to learn the knowledge in it

### How is this different from the real course?

- The interface is very similar to the real course, however there are no discussions and no TAs or instructors

### Why do I need to learn Ruby before starting the first Ruby course?

- Learning to program in the early stages is a two-step process:
  1. Learn programming constructs and grammar and syntax
  2. Learn to build a functioning application with knowledge from above; the “putting it together” stage
- Programmers get paid to do #2
- Launch School courses are focused on #2, however, to teach higher-level concepts, knowledge of basic grammar and syntax is assumed

### How well do I really need to know this?

- Do every assignment listed in the course, and you should be ready

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
   FOUR = 'four'
   FIVE = 5
   ```

5. Prefer `{}` when the entire code expression fits on one line

   ```ruby
   [1, 2, 3].each { |i| do_some_stuff }

   [1, 2, 3].each { |i| do_some_stuff }
   ```

6. Use **PascalCase** when naming classes

   ```ruby
   class MyFirstClass
   end
   ```

- Further research: [Ruby Style Guide][style-guide]

## Book: Introduction to Programming with Ruby

- [Notes][ruby-intro-notes] for [Introduction to Programming with Ruby][ruby-intro-book]
- Spend as much time as needed to go through this book carefully; it’s the most important part of the prep course
- It’s vital to be comfortable reading and writing basic Ruby syntax and understanding fundamental programming constructs such as loops, variables, and conditionals
- Push code for exercises to a GitHub repo

## Exercises: Ruby Basics

- [Exercises][ruby-basics]

[readme]: /README.md
[ruby-basics]: /exercises/ruby_basics/ruby-basics-contents.md
[ruby-intro-notes]: introduction_to_programming_with_ruby/introduction-to-programming-with-ruby-notes.md
[launch-school]: https://launchschool.com
[ruby-intro-book]: https://launchschool.com/books/ruby
[style-guide]: https://github.com/rubocop-hq/ruby-style-guide
