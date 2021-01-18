[Launch School Core Curriculum](/README.md) >
[Exercises: Ruby Basics](/exercises/ruby_basics/ruby_basics_contents.md) >
Hashes

# Hashes

Ruby Basics exercises from [Launch School’s](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1.  
    ```ruby
    car = { type: 'sedan', color: 'blue', mileage: 80_000 }
    ```
2.  
    ```ruby
    car = {
      type:    'sedan',
      color:   'blue',
      mileage: 80_000
    }
    car[:year] = 2003
    ```
3.  
    ```ruby
    car = {
      type:    'sedan',
      color:   'blue',
      mileage: 80_000,
      year:    2003
    }
    car.delete :mileage
    ```
4.  
    ```ruby
    car = {
      type:    'sedan',
      color:   'blue',
      year:    2003
    }
    puts car[:color]
    ```
5.  
    ```ruby
    numbers = {
      high:   100,
      medium: 50,
      low:    10
    }
    numbers.each { |key, value| puts "A #{key} number is #{value}." }
    ```
    6.  
    ```ruby
    numbers = {
      high:   100,
      medium: 50,
      low:    10
    }
    half_numbers = numbers.map { |key, value| value / 2 }
    p half_numbers
    ```
7.  
    ```ruby
    numbers = {
      high:   100,
      medium: 50,
      low:    10
    }
    low_numbers = numbers.select { |key, value| value < 25 }
    p low_numbers
    ```
8.  
    ```ruby
    numbers = {
      high:   100,
      medium: 50,
      low:    10
    }

    low_numbers = numbers.select! do |key, value|
                    value < 25
                  end

    p low_numbers
    p numbers
    ```
9.  
    ```ruby
    nested_hash = {
      car: {
        type: 'sedan',
        color: 'blue',
        year: 2003
      },
      truck: {
        type: 'pickup',
        color: 'red',
        year: 1998
      }
    }
    ```
10. 
    ```ruby
    car = [
      [:type, 'sedan'],
      [:color, 'blue'],
      [:year, 2003]
    ]
    ```
