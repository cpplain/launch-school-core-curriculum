[Launch School Core Curriculum](/README.md) >
[Exercises: Ruby Basics](/exercises/ruby_basics/ruby_basics_contents.md) >
Debugging

# Debugging

Ruby Basics exercises from [Launch School’s](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1.  The method is expecting a single argument, an array of integers 
    ```ruby
    def find_first_nonzero_among(numbers)
      numbers.each do |n|
        return n if n.nonzero?
      end
    end

    find_first_nonzero_among([0, 0, 1, 0, 2, 0])
    find_first_nonzero_among([1])
    ```
2.  `sunshine` always evaluates to true because it is set with string values of `"true"` and `"false"` instead of the booleans `true` and `false`
    ```ruby
    def predict_weather
      sunshine = [true, false].sample

      if sunshine
        puts "Today's weather will be sunny!"
      else
        puts "Today's weather will be cloudy!"
      end
    end
    ```
3.  The method expects an integer but the method is being called with a string
    ```ruby
    def multiply_by_five(n)
      n * 5
    end

    puts "Hello! Which number would you like to multiply by 5?"
    number = gets.chomp.to_i

    puts "The result is #{multiply_by_five(number)}!"
    ```
4.  --
    ```ruby
    pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

    pets[:dog].push 'bowser'

    p pets
    ```
5.  `#select` should be used instead of `#map` to return only the even element
    ```ruby
    numbers = [5, 2, 9, 6, 3, 1, 8]

    even_numbers = numbers.select do |n|
      n.even?
    end

    p even_numbers
    ```
6.  When `person` is set to 'Confucious', the last line to evaluate is an `if` statement and it returns `nil`
    ```ruby
    def get_quote(person)
      if person == 'Yoda'
        'Do. Or do not. There is no try.'
      elsif person == 'Confucius'
        'I hear and I forget. I see and I remember. I do and I understand.'
      elsif person == 'Einstein'
        'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
      end
    end

    puts 'Confucius says:'
    puts '"' + get_quote('Confucius') + '"'
    ```
7.  `balance` was assigned a new value during each iteration instead of incrementing with using the current and new values
    ```ruby
    # Financially, you started the year with a clean slate.

    balance = 0

    # Here's what you earned and spent during the first three months.

    january = {
      income: [ 1200, 75 ],
      expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
    }

    february = {
      income: [ 1200 ],
      expenses: [ 650, 140, 320, 46.7, 122.5 ]
    }

    march = {
      income: [ 1200, 10, 75 ],
      expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
    }

    # Let's see how much you've got now...

    def calculate_balance(month)
      plus  = month[:income].sum
      minus = month[:expenses].sum

      plus - minus
    end

    [january, february, march].each do |month|
      balance += calculate_balance(month)
    end

    puts balance
    ```
8.  The `colors` array is larger than the `things` array and the `break` is not set correctly to exit the loop for either array, resulting in `TypeError (no implicit conversion of nil into String)` when trying to access an array element that is greater than the last element 
    ```ruby
    colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
    things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

    colors.shuffle!
    things.shuffle!

    i = 0
    loop do
      break if i > things.length - 1

      if i == 0
        puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
      else
        puts 'And a ' + colors[i] + ' ' + things[i] + '.'
      end

      i += 1
    end
    ```
9.  `product` is initialized with the value of `0`, which results in all further products equaling `0`
    ```ruby
    def digit_product(str_num)
      digits = str_num.chars.map { |n| n.to_i }
      product = digits.shift

      digits.each do |digit|
        product *= digit
      end

      product
    end

    p digit_product('12345')
    ```
10. Keys are using symbols but the program is tring to access the hash value using a string key and `#merge` does not mutate the caller
    ```ruby
    # Each player starts with the same basic stats.

    player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

    # Then the player picks a character class and gets an upgrade accordingly.

    character_classes = {
      warrior: { strength:  20 },
      thief:   { dexterity: 20 },
      scout:   { stamina:   20 },
      mage:    { charisma:  20 }
    }

    puts 'Please type your class (warrior, thief, scout, mage):'
    input = gets.chomp.downcase

    player = player.merge(character_classes[input.to_sym])

    puts 'Your character stats:'
    puts player
    ```
