[Launch School Core Curriculum][readme] >
[Exercises: Ruby Basics][ruby-basics] >
Strings

# Strings

Ruby Basics exercises from [Launch School’s][launch-school] [Core Curriculum][core-curriculum].

1.  --

    ```ruby
    new_string = String.new
    ```

2.  --

    ```ruby
    puts "It's now 12 o'clock."
    ```

3.  --

    ```ruby
    name = 'Roger'
    puts name.casecmp('RoGeR') == 0
    puts name.casecmp('DAVE') == 0
    ```

4.  --

    ```ruby
    name = 'Elizabeth'

    puts "Hello, #{name}!"
    ```

5.  --

    ```ruby
    first_name = 'John'
    last_name = 'Doe'
    full_name = "#{first_name} #{last_name}"
    puts full_name
    ```

6.  --

    ```ruby
    state = 'tExAs'
    state.capitalize!
    puts state
    ```

7.  --

    ```ruby
    greeting = 'Hello!'
    greeting.gsub!('Hello', 'Goodby')
    puts greeting
    ```

8.  --

    ```ruby
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    puts alphabet.split('')
    ```

9.  --

    ```ruby
    words = 'car human elephant airplane'
    words.split(' ').each { |word| puts word + 's' }
    ```

10. --

    ```ruby
    colors = 'blue pink yellow orange'
    puts colors.include? 'yellow'
    puts colors.include? 'purple'
    ```

[readme]: /README.md
[ruby-basics]: ruby-basics-contents.md
[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
