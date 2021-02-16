[Launch School Core Curriculum][readme] >
[RB101 Programming Foundations][rb101-notes] >
Lesson 5: Advanced Ruby Collections

# Lesson 5: Advanced Ruby Collections

Notes for Lesson 5 of [Launch School's][launch-school] RB101 course.

## Contents

- [Sorting](#sorting)

## Sorting

- Another common way of working with collections, in addition to iteration, is sorting.
- Sorting is mostly done on arrays as arrays are access by index, and the order in which the items appear can be important.
- Strings don't have sorting methods but can be converted to an array and then sorted.

### What Is Sorting?

- Sorting is setting the order of items in a collection according to a specific criterion.
- Sorting can be accomplished manually using simple looping methods, but the overall code would be complex.
- Ruby provides simple methods to do the sorting for us: `sort` and `sort_by`.
- Under the hood, `sort` is a complex algorithm.
- It's not necessary to understand all of the details of how `sort` is implemented but do need to understand how it applies the sort criterion.

### Comparison

- Sorting is carried out by comparing items in a collection with each other and ordering them based on the results of the comparison.
- How does Ruby know how to order items in an array?
  - It uses the `<=>` method (sometimes called the spaceship operator).

### The `<=>` Method

- Any object in a collection that needs to be sorted **must** implement the `<=>` method.
- The method performs a comparison of two objects of the same type and returns:
  - `-1` if the first object is less than the second.
  - `0` if the first object is equal to the second.
  - `1` if the first object is greater than the second.
  - `nil` if the two objects can't be compared.

```ruby
2 <=> 1 # => 1
1 <=> 2 # => -1
2 <=> 2 # => 0
"b" <=> "a" # => 1
"a" <=> "b" # => -1
"b" <=> "b" # => 0
1 <=> "a" # => nil
```

- If `<=>` returns `nil` to `sort`, it throws an argument error.
- It's important to know two things when sorting a collection:
  - does the object type of the collection elements implement a `<=>` method?
  - if yes, what is the specific implementation of that method?
- **ASCII Table** - string order is determined by the by the character's position in the ASCII table.
- Don't need to memorize the ASCII table, but some useful rules to remember are:
  - uppercase letters come before lowercase letters.
  - digits and (most) punctuation come before letters.
  - an extended ASCII table contains accented and other characters.
  - the extended table comes after the main ASCII table.

### The `sort` Method

- Can call `sort` with a block.

```ruby
# Ascending (default) order
[2, 5, 3, 4, 1].sort { |a, b| a <=> b }
# => [1, 2, 3, 4, 5]

# Descending order
[2, 5, 3, 4, 1].sort { |a, b| b <=> a }
# => [5, 4, 3, 2, 1]
```

- Can write additional code in the block as long as it returns `-1`, `0`, `1`, or `nil`.

```ruby
[2, 5, 3, 4, 1].sort do |a, b|
  puts "a is #{a} and b is #{b}"
  a <=> b
end
# a is 2 and b is 5
# a is 5 and b is 3
# a is 2 and b is 3
# a is 5 and b is 4
# a is 3 and b is 4
# a is 5 and b is 1
# a is 4 and b is 1
# a is 3 and b is 1
# a is 2 and b is 1
# => [1, 2, 3, 4, 5]
```

### The `sort_by` Method

- `sort_by` is similar to `sort` but is usually called with a block.
- The code in the block determines how the items are compared.
- Normally it isn't necessary to sort hashes, but if needed, `sort_by` is the way to do so.

```ruby
people = { Kate: 27, john: 25, Mike: 18 }
people.sort_by { |_, age| age }
# => [[:Mike, 18], [:john, 25], [:Kate, 27]]
```

- `sort_by` always returns an array even when called on a hash.

### Other Methods That Use Comparison

- Like `sort` and `sort_by`, objects being compared need to implement `<=>` for these Enumerable methods to be used:
  - `min`
  - `max`
  - `minmax`
  - `min_by`
  - `max_by`
  - `minmax_by`

### Summary

- Sorting is algorithmically complex to implement.
- The `sort` and `sort_by` methods do the complex work.
- Comparison is at the heart of sorting.
- Objects must implement the `<=>` method to be sorted.
- Methods other than `sort` and `sort_by` also use comparison.

[rb101-notes]: /rb101/rb101-notes.md
[readme]: /README.md
[launch-school]: https://launchschool.com
