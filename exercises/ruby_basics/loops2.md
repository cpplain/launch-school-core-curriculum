[Launch School Core Curriculum](/README.md) >
[Exercises: Ruby Basics](/exercises/ruby_basics/ruby_basics_contents.md) >
Loops 2

# Loops 2

Ruby Basics exercises from [Launch School’s](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1.  
    ```ruby
    count = 1

    loop do
      if count.odd?
        puts "#{count} is odd"
      else
        puts "#{count} is even"
      end
      
      count += 1
      break if count > 5
    end
    ```
2.  
    ```ruby
    loop do
      number = rand(100)
      puts number
      break if number.between?(0, 10)
    end
    ```
3.  
    ```ruby
    process_the_loop = [true, false].sample

    if process_the_loop
      loop do
        puts "The loop was processed!"
        break
      end
    else
      puts "The loop wasn't processed!"
    end
    ```
4.  
    ```ruby
    loop do
      puts 'What does 2 + 2 equal?'
      answer = gets.chomp.to_i

      if answer == 4
        puts "That's correct!"
        break
      else
        puts "Wrong answer. Try again!"
      end
    end
    ```
5.  
    ```ruby
    numbers = []

    loop do
      puts 'Enter any number:'
      input = gets.chomp.to_i

      numbers.push(input)
      break if numbers.size == 5
    end
    puts numbers
    ```
6.  
    ```ruby
    names = ['Sally', 'Joe', 'Lisa', 'Henry']

    loop do
      name = names.pop
      break if name.nil?
      puts name 
    end
    ```
7.  
    ```ruby
    5.times do |index|
      puts index
      break if index == 2
    end
    ```
8.  
    ```ruby
    number = 0

    until number == 10
      number += 1
      next if number.odd?
      puts number
    end
    ```
9.  
    ```ruby
    number_a = 0
    number_b = 0

    loop do
      number_a += rand(2)
      number_b += rand(2)
      next unless number_a == 5 || number_b == 5

      puts "5 was reached!"
      break
    end
    ```
10. 
    ```ruby
    def greeting
      puts 'Hello!'
    end

    number_of_greetings = 2

    while number_of_greetings > 0
      greeting
      number_of_greetings -= 1
    end
    ```
