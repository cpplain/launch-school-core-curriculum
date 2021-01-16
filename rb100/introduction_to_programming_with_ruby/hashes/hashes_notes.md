[Launch School Core Curriculum](/README.md) >
[RB100 Programming and Back-end Prep](/rb100/rb100_notes.md) >
[Introduction to Programming with Ruby](/rb100/introduction_to_programming_with_ruby/introduction_to_programming_with_ruby_notes.md) >
Hashes

# Hashes

Notes for [Hashes](https://launchschool.com/books/ruby/read/hashes) chapter of [Launch School’s](https://launchschool.com) [Introduction to Programming with Ruby](https://launchschool.com/books/ruby).

## What is a Hash?
* A **hash** is a data structure that stores elements as key-value pairs
* Most commonly, a hash is created using symbols as *keys* and any data type as *values*
* Old syntax:
```ruby
{ :key => 'value' }
```
* New syntax:
```ruby
{ key: 'value' }
```
* Add to hash:
```ruby
hash[:key] = 'value'
```
* Remove value:
```ruby
hash.delete(:key)
```
* Return value:
```ruby
hash[:key]
```
* Merge two hashes:
```ruby
hash.merge!(new_hash)
```

## Iterating Over Hashes
* Similar to iterating over arrays
* Exercise: [iterating_over_hashes.rb](hashes/iterating_over_hashes.rb)
* `.each` uses key and value variables

## Hashes as Optional Parameters
* Can use a hash to accept optional parameters when creating a method
```ruby
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}."
  end
end

greeting("Bob", {age: 62})
```
* Curly braces are not required when a hash is the last arguement
```ruby
greeting("Bob", age: 62)
```
* This is common among Rails developers

## A Note on Hash Keys
* It is possible to use different data types as keys
```ruby
{"height" => "6 ft"}  # string as key
{1 => "one"}          # integer as key
```
* Old style syntax (`=>`) is required when not using symbols as keys

## Common Hash Methods
* `.has_key?()` checks if hash has specific key and returns boolean
* `.select` returns key-value pairs that evaluate to true in passed block
* `.fetch()` returns value for given key or optional return value
```ruby
name_and_age.fetch("Larry", "Larry isn't in this hash")
```
* `.to_a` returns array version of the hash
```ruby
irb :009 > name_and_age.to_a
=> [["Bob", 42], ["Steve", 31], ["Joe", 19]]
```
* `.keys` and `.values` returns array of all keys or values

## A Note on Hash Order
* Hash order is not guaranteed prior to Ruby 1.9
* Since Ruby 1.9, hashes maintain the order in which they are stored

## Exercises
1. [exercise_1.rb](exercise_1.rb)
1. [exercise_2.rb](exercise_2.rb)
1. [exercise_3.rb](exercise_3.rb)
1. `person[:name]`
1. The first hash was created with the `:x` symbol and the second with the string value of the `x` variable
1. B. There is no method called `keys` for Array objects
1. [exercise_8.rb](exercise_8.rb)
