[Launch School Core Curriculum](/README.md) >
[RB101 Programming Foundations](/rb101/rb101_notes.md) >
Lesson 2: Small Programs

# Lesson 2: Small Programs

Notes for Lesson 2 of [Launch School’s](https://launchschool.com) RB101 course.

## Contents
* [Ruby Style](#ruby-style)
* [Lecture: Kickoff](#lecture-kickoff)
* [Truthiness](#truthiness)
* [Walk-through: Calculator](#walk-through-calculator)
* [Pseudo-Code](#pseudo-code)
* [Flowchart](#flowchart)
* [RuboCop](#rubocop)
* [Walk-through: Refactoring Calculator](#walk-through-refactoring-calculator)
* [Debugging](#debugging)
* [Precedence](#precedence)
* [Assignment: Mortgage / Car Loan Calculator](#assignment-mortgage--car-loan-calculator)
* [Coding Tips](#coding-tips)
* [Variable Scope](#variable-scope)
* [More Variable Scope](#more-variable-scope)
* [Pass by Reference vs Pass by Value](#pass-by-reference-vs-pass-by-value)
* [Walk-through: Rock Paper Scissors](#walk-through-rock-paper-scissors)

## Ruby Style
1.  Text editor should use two spaces for tabs and indenting should be set to use spaces
2.  `#` sign at the beginning of a line signifies everything on the same line is a comment
3.  Always use snake_case formatting to define or initialize a method, variable, or file
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
4.  Define a constant variable (all uppercase) when value will not change
    ```ruby
    # Constant declaration
    FOUR = 'four'
    FIVE = 5
    ```
5.  Prefer `{}` when the entire code expression fits on one line
    ```ruby
    # Multi-line vs single line
    [1, 2, 3].each do |i|
      do_some_stuff
    end

    [1, 2, 3].each { |i| do_some_stuff }
    ```
6.  Use **PascalCase** when naming classes
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

## Pseudo-Code
* Pseudo-code is used to load the problem into our brain
* It’s used to try to dissect, understand, and solve a problem
* Helps focus on the logical problem and not the programming language
* Formalizing pseudo-code helps make translation to programming code easier
  | keyword             | meaning                              |
  | :------------------ | :----------------------------------- |
  | START               | start of the program                 |
  | SET                 | sets a variable we can use for later |
  | GET                 | retrieve input from user             |
  | PRINT               | displays output to user              |
  | READ                | retrieve value from variable         |
  | IF / ELSE IF / ELSE | show conditional branches in logic   |
  | WHILE               | show looping logic                   |
  | END                 | end of the program                   |
* Psuedo-code example
  ```
  START

  # Given a collection of integers called "numbers"

  SET iterator = 1
  SET saved_number = value within numbers collection at space 1

  WHILE iterator <= length of numbers
    SET current_number = value within numbers collection at space "iterator"
    IF saved_number >= current_number
      go to the next iteration
    ELSE
      saved_number = current_number

    iterator = iterator + 1

  PRINT saved_number

  END
  ```
* Translation of psuedo-code to Ruby
  ```ruby
  def find_greatest(numbers)
    saved_number = nil

    numbers.each do |num|
      saved_number ||= num  # assign to first value
      if saved_number >= num
        next
      else
        saved_number = num
      end
    end

    saved_number
  end
  ```
* For more sophisticated problems, apply pseudo-code to smaller parts of the problem then translate that to Ruby code to verify the logic before moving on to the next piece in the problem
* [pseudo_code_practice.md](pseudo_code_practice.md)

## Flowchart
* **Flowchart** helps map out the logical sequence of a possible solution in a visual way
* Flowchart components:
  * **Oval** start/end
  * **Rectangle** processing step
  * **Parrallelogram** input/output
  * **Diamond** decision (two branches per diamond)
  * **Circle** connector
* Use an imperative approach when working with flowcharts
  * **Imperative** or **procedural** is step-by-step way of solving a problem
  * **Declarative** uses abstracted or encapsulated components of a language, such as `each`
* Using pseudo-code and flowcharts to help dissect the logic of a problem, requires trying to figure out how detailed to make the chart and pseudo-code and what to extract to sub-processes
* This is exactly what a programmer should be thinking about when designing a solution
* Start at a high level, using declarative syntax, then drill down a level (sub-processes), using imperative pseudo-code

## RuboCop
* [RuboCop](https://rubocop.org) is a static code analyzer
* Rules are **cops**
* Cops are grouped into **departments**
* The two departments we care about are style formatting and code linting (syntax and logic)
* Recommend using `v0.86.0`
* [Gemfile](Gemfile)
* Install: `bundle install`
* Usage: `bundle exec rubocop file.rb`
* [.rubocop.yml](.rubocop.yml)

## Walk-through: Refactoring Calculator
* Multiline string using **heredoc**:
  ```ruby
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  ```
* The `Kernel` module is included by class `Object`, so its methods are available in every Ruby object

## Debugging
* Debugging is arguably the most important skill a programmer needs to learn
* Work to develop a systematic, patient temperament

### Online Resources
1.  Search engine
2.  Stack Overflow
3.  Documentation

### Steps to Debugging
1.  Reproduce the error
2.  Determine the boundaries of the error
3.  Trace the code
4.  Understand the problem well
5.  Implement a fix
    * Important: fix one problem at a time
6.  Test the fix

### Techniques for Debugging
1.  Line by line (patient, systematic)
2.  Rubber duck
3.  Walk away
4.  Use Pry
5.  Use a debugger

## Precedence
* **Operator precedence** is a set of rules that determine the order operators are evaluated
* Parentheses override the default evaluation order
* Don’t rely too much on precedence, use parentheses to explicitly define the meaning
* Operator with a higher precedence is said to **bind** tighter to its operands than those with lower priority
* Ruby doesn’t evaluate `?:`, `&&`, and `||` subexpressions unless it needs them
* Blocks have the lowest precedence of all operators
* A `{}` block has higher priority than a `do...end` block
* The following shows how operator precedence can affect outcome (parentheses added to visualize order)
  ```ruby
  array = [1, 2, 3]

  p(array.map) do |num|
    num + 1                           #  <Enumerator: [1, 2, 3]:map>
  end                                 #  => <Enumerator: [1, 2, 3]:map>

  p(array.map { |num| num + 1 })   r  # [2, 3, 4]
                                      # => [2, 3, 4]
  ```
* Object’s `tap` method extremely useful for debugging
  ```ruby
  (1..10)                  .tap { |x| p x }   # 1..10
    .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
    .map {|x| x*x }        .tap { |x| p x }   # [4, 16, 36, 64, 100]
  ```
* Moral of the storay: **Use Parentheses!**

## Assignment: Mortgage / Car Loan Calculator
* [loan_calculator.rb](loan_calculator.rb)

## Coding Tips

### Dramatic Experience and Retaining Knowledge
* The only way to retain information is to pay with time or get burned
* Better to pay with time

### Naming Things
* Don’t save characters; choose descriptive variable and method names
* Try to capture the intent of the variable in the name
* One small exception to descriptive variable names is for very small blocks of code

### Naming Conventions
* Use `snake_case` for everything, except use `CamelCase` for classes and `UPPERCASE` for constants

### Mutating Constants
* Although Ruby allows it, constants should not be mutated
* Constants should be immutable

### Methods
* Methods should do one thing and be limited in scope
* Length should be kept around 10 lines
* Consider breaking methods of 15 lines or longer into multiple methods
* Methods should return a value **OR** perform side effects **NOT** both
* The method name should refelect whether it has side effects or not

### Method Abstraction
* Methods should be at the same level of abstraction
* Using the method should not require thinking about its implementation
* Can a method be used without studying the implementation?

### Method Names
* Names should reflect if a method mutates a value
* Names should reflect if a method displays output
* What a method does should be obvious from the name

### Miscellaneous Tips
* Don’t prematurely exit a program; it should likely have a single exit point
* Know when to use `do/while` vs `while`
  * Works:
    ```ruby
    answer = ''
    while answer.downcase != 'n' do
      puts "Continue? (y/n)"
      answer = gets.chomp
    end
    ```
  * Better:
    ```ruby
    loop do
      puts "Continue? (y/n)"
      answer = gets.chomp
      break if answer.downcase == 'n'
    end
    ```
### Approach to Learning
* Learning to program takes focus, attention, and repetition
* It’s normal not to remember most of what is done the first time around
* Keep moving forward

## Variable Scope
* This assignment deals only with **local variables**
* Two major areas where local variable scoping rules are encountered are **method definition** and **method invocation with a block**

### Variables and Blocks
* In a method invocation with a block, the block is the `do...end` or `{...}` following the invocation
* Block creates a new local scope
* Nested blocks create nested scopes
* A variables scope is determined by where it is initialized
* Outer scope variables can be accessed from the inner scope
* Inner scope variables cannot be access from the outer scope
* Peer scopes do not conflict
* Nested blocks follow the same rules with "inner" and "outer" relative depending on the blocks being referenced
* **Variable shadowing** happens when a block takes a parameter that is named identically to an outer scope variable
  ```ruby
  n = 10

  1.times do |n|
    n = 11
  end

  puts n          # => 10
  ```
  * Variable shadowing should be avoided

### Variables and Method Definitions
* A method’s scope is entirely self-contained
* Only variables that have been defined as parameters can be accessed within the method
* Variables must be passed into the method as arguements

### Constants
* Scope for constant variables is not the same as for local variables
* Contants behave like global variables and said to have **lexical scope**
  ```ruby
  loop do
    MY_TEAM = "Phoenix Suns"
    break
  end

  puts MY_TEAM    # => Phoenix Suns
  ```

## More Variable Scope
* Any method can be called with a block, but the block is only executed if the method is defined in a particular way
* A block is part of the method invocation
* The block acts as an arguement to the method
  ```ruby
  def greetings
    yield
    puts "Goodbye"
  end

  word = "Hello"

  greetings do
    puts word
  end

  # Outputs 'Hello'
  # Outputs 'Goodbye'
  ```
  * `yield` executes the block
* The method can use the return value of the block
* For example, `Array#map` is defined in such a way to use the return value of the block to tranform the each element
  ```ruby
  a = "hello"

  [1, 2, 3].map { |num| a } # => ["hello", "hello", "hello"]
  ```
  * `#map` doesn’t have access to `a` but the block passed to `#map` does so the return value of the block can be used
* Method definition sets the scope of any local variables defined in terms of parameters and if/how it interacts with blocks
* Method invocation uses the scope set by the method definition

## Pass by Reference vs Pass by Value
* In **pass by value** the method is given a copy of the object and any changes to the method’s object do not affect the original
* In **pass by reference** the method is given a reference to the arguement variable and any changes affect the original object
* Ruby exhibits a combination of both behaviors
* Sometimes referred to as **call by sharing**
* Most important thing to remember: when an operation within a method mutates the caller, it will affect the original object
* [Variable References and Mutability of Ruby Objects](https://launchschool.com/blog/references-and-mutability-in-ruby)
  * Variable can be said to be **bound** to the object
  * Ruby behavior is similar to pass by value when dealing with immutable objects
  * Ruby behaviro is similar to pass by reference when dealing with mutable objects
* [Mutating and Non-Mutating Methods in Ruby](https://launchschool.com/blog/mutating-and-non-mutating-methods)
  * Most methods do not mutate their arguments or caller, some mutate the caller, few mutate the arguments
* [Object Passing in Ruby - Pass by Reference or Pass by Value](https://launchschool.com/blog/object-passing-in-ruby)
  * With **strict evaluation**, every expression is evaluated and converted to an object before being passed to a method
  * Ruby uses strict evaluation
  * Pass by object_id?

## Walk-through: Rock Paper Scissors
* [rock_paper_scissors.rb](rock_paper_scissors.rb)

## Coding Tips 2
* Don’t mutate the caller during iteration
  * Mutating elements in a collection is acceptable but not the collection (e.g, deleting elements)
* Don’t use assignment in the arguement of a conditional
  * Hard to determine if `=` or `==` was intended
* Use an underscore for unused parameters
  ```ruby
  names.each_with_index do|_, idx|
    puts "#{idx+1}. got a name!"
  end
  ```
* Gain exerience through struggle
  * Don’t memorize best practices but spend enough time programming to understand the context of the practices
  * Don’t be afraid to make mistakes
