[Launch School Core Curriculum][readme] >
[RB100 Programming and Back-end Prep][rb100-notes] >
[Introduction to Programming with Ruby][ruby-intro-notes] >
Loops and Iterators

# Loops and Iterators

Notes for Loops and Iterators chapter of [Launch School’s][launch-school] [Introduction to Programming with Ruby][ruby-intro-book].

## A Simple Loop

- `loop` the simplest way to create a loop in Ruby
- [loop_example.rb](loop_example.rb)
- Not likely to use in a real program as an infinite loop is not very useful and will result in a crash

## Controlling Loop Execution

- More useful by using `break` to exit loop
- [useful_loop.rb](useful_loop.rb)
- Can conditionally exit using an `if` statement
- [conditional_loop.rb](conditional_loop.rb)
- Similar to `break`, use `next` to skip the rest of the current iteration and move to the next iteration
- [next_loop.rb](next_loop.rb)

## While and Until Loops

- A **while loop** is given a parameter that evaluates to a boolean and executes until the boolean is `false`
- [countdown.rb](countdown.rb)

## Do/While Loops

- A **do/while loop** works in a similar way to a while loop but code within the loop gets executed at least once
- The conditional check is placed at the end of the loop as opposed to the beginning

  ```ruby
  loop do
    puts 'Do you want to do that again?'
    answer = gets.chomp
    break if answer != 'Y'
  end
  ```

- The following works but is not recommended by Matz, the founder of Ruby

  ```ruby
  begin
    puts 'Do you want to do that again?'
    answer = gets.chomp
  end while answer == 'Y'
  ```

## For Loops

- Used to loop over a collection of elements
- Not possible to create an infinite loop, loops over finite number of elements

  ```ruby
  x = gets.chomp.to_i

  for i in 1..x
    puts i
  end

  puts 'Done!'
  ```

- Range (`..`) used in example above
- For loop returns the collection of elements after it executes

## Conditionals Within Loops

- The reserved words `next` and `break` are useful when looping
- The `next` reserved word will jump from to the next loop iteration without executing the code beneath it

  ```ruby
  while x <= 10
    if x == 3
      x += 1
      next
    elsif x.odd?
      puts x
    end
    x += 1
  end
  ```

- The `break` reserved word will exit the loop immediately without executing any further code in the loop

  ```ruby
  while x <= 10
    if x == 7
      break
    elsif x.odd?
      puts x
    end
    x += 1
  end
  ```

- Most Rubyists prefer iterators instead of loops where possible

## Iterators

- **Iterators** are methods that loop over a given set of data and allow operations on each element in the collection
- Two styles of blocks:

  - Use curly braces (`{}`) when everything can be contained in one line

  ```ruby
  names = %w[Bob Joe Steve Janice Susan Helen]

  names.each { |name| puts name }
  ```

  - Use reserved words `do` and `end` for multi-line operations

  ```ruby
  names = %w[Bob Joe Steve Janice Susan Helen]
  x = 1

  names.each do |name|
    puts "#{x}. #{name}"
    x += 1
  end
  ```

## Recursion

- **Recursion** is the act of calling a method from within itself
- Example: calculate the nth number in the fibonacci sequence

  ```ruby
  def fibonacci(number)
    number < 2 ? number : fibonacci(number - 1) + fibonacci(number - 2)
  end

  puts fibonacci(6)
  ```

- The key concept with recursion is there is a baseline condition that returns a value that unwinds the recursive call

## Exercise

1. Returns `[1, 2, 3, 4, 5]`
2. [exercise_2.rb](exercise_2.rb)
3. [exercise_3.rb](exercise_3.rb)

[rb100-notes]: /rb100/rb100-notes.md
[readme]: /README.md
[ruby-intro-notes]: /rb100/introduction_to_programming_with_ruby/introduction-to-programming-with-ruby-notes.md
[launch-school]: https://launchschool.com
[ruby-intro-book]: https://launchschool.com/books/ruby
