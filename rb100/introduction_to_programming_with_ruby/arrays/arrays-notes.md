[Launch School Core Curriculum][readme] >
[RB100 Programming and Back-end Prep][rb100-notes] >
[Introduction to Programming with Ruby][ruby-intro-notes] >
Arrays

# Arrays

Notes for Arrays chapter of [Launch School's][launch-school] [Introduction to Programming with Ruby][ruby-intro-book].

## What is an Array?

- **Array** is an ordered list of elements that can be of any type
- `.first` returns first element
- `.last` returns last element

## Modifying Arrays

- `.pop` remove and return last element from the array
- `.push()` or `<<` to add element to the end of the array

```ruby
array.push("another string")
array << "another string"
```

- `.map` iterate over the array applying a block to each element and return new array
  - `.collect` is an alias to map

```ruby
a.map { |num| num**2 }
```

- `.delete_at()` delete element at specific index
- `.delete()` delete all elements with specific value
- `.uniq` returns new array with only unique elements

## Iterating Over an Array

- Ruby standard library has many methods to iterate over arrays
- `.select` returns a new array with elements matching expression

```ruby
numbers.select { |number| number > 4 }
```

## Methods With a !

- Methods with a bang suffix (`!`) usually indicate the method will mutate the caller

## Nested Arrays

- Arrays can contain any data type
- Arrays can contain arrays
- Arrays can also contain hashes

## Comparing Arrays

- Arrays can be compared using the `==` operator
- `.unshift()` adds element to the beginning of the array

## to_s

- `.to_s` returns string representation of array
- Happens behind the scenes when using string interpolation

```ruby
"This is an array #{[1, 2, 3]}"
```

## Common Array Methods

- `.include?()` checks array for value and returns boolean
  - Method is an example of a **predicate**
- `.flatten` creates a one-dimensional array from a multi-dimensional array
- `.each_index` like `each` but variable is the element index instead of the element value

```ruby
a.each_index { |i| puts "The index is #{i}" }
```

- `.each_with_index` variables are value and index

```ruby
a.each_with_index do |value, index|
  puts "The value for index #{index} is #{value}"
end
```

- `.sort` returns a sorted array
- `.product()` returns an array that is a combination of all elements from all arrays

```ruby
[1, 2, 3].product([4, 5])
=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
```

## each vs map

- `.each` is used for iteration and returns the collection it was invoked on
- `.map` is used for transformation and returns a new array containing values returned by block

## Exercises

1. [exercise_1.rb](exercise_1.rb)
2. Return value, array value:
   1. `1`, `[["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]`
   1. `[1, 2, 3]`, `[["b"], ["a", [1, 2, 3]]]`
3. `arr[1][0]` or `arr.last.first`
4. Return:
   1. `3`
   1. `NoMethodError`
   1. `8`
5. Value:
   1. `"e"`
   1. `"A"`
   1. `nil`
6. `names['margaret']` requires index not string; one possible fix is `names[name.index('margaret')]`
7. [exercise_7.rb](exercise_7.rb)
8. [exercise_8.rb](exercise_8.rb)

[rb100-notes]: /rb100/rb100-notes.md
[readme]: /README.md
[ruby-intro-notes]: /rb100/introduction_to_programming_with_ruby/introduction-to-programming-with-ruby-notes.md
[launch-school]: https://launchschool.com
[ruby-intro-book]: https://launchschool.com/books/ruby
