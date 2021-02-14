[Launch School Core Curriculum][readme] >
[Exercises: Ruby Basics][ruby-basics] >
Hashes

# Hashes

Ruby Basics exercises from [Launch School’s][launch-school] [Core Curriculum][core-curriculum].

1.  --

    ```ruby
    car = { type: 'sedan', color: 'blue', mileage: 80_000 }
    ```

2.  --

    ```ruby
    car = { type: 'sedan', color: 'blue', mileage: 80_000 }
    car[:year] = 2003
    ```

3.  --

    ```ruby
    car = { type: 'sedan', color: 'blue', mileage: 80_000, year: 2003 }
    car.delete :mileage
    ```

4.  --

    ```ruby
    car = { type: 'sedan', color: 'blue', year: 2003 }
    puts car[:color]
    ```

5.  --

    ```ruby
    numbers = { high: 100, medium: 50, low: 10 }
    numbers.each { |key, value| puts "A #{key} number is #{value}." }
    ```

6.  --

    ```ruby
    numbers = { high: 100, medium: 50, low: 10 }
    half_numbers = numbers.map { |key, value| value / 2 }
    p half_numbers
    ```

7.  --

    ```ruby
    numbers = { high: 100, medium: 50, low: 10 }
    low_numbers = numbers.select { |key, value| value < 25 }
    p low_numbers
    ```

8.  --

    ```ruby
    numbers = { high: 100, medium: 50, low: 10 }

    low_numbers = numbers.select! { |key, value| value < 25 }

    p low_numbers
    p numbers
    ```

9.  --

    ```ruby
    nested_hash = {
      car: {
        type: 'sedan',
        color: 'blue',
        year: 2003,
      },
      truck: {
        type: 'pickup',
        color: 'red',
        year: 1998,
      },
    }
    ```

10. --

    ```ruby
    car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]
    ```

[readme]: /README.md
[ruby-basics]: ruby-basics-contents.md
[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
