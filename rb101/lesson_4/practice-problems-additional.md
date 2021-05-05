[Launch School Core Curriculum][readme] >
[RB101 Programming Foundations][rb101] >
[Lesson 4: Ruby Collections][lesson4] >
Practice Problems: Additional Practice

# Practice Problems: Additional Practice

Exercises for Lesson 4 of [Launch School's][launch-school] RB101 course.

1. --

```ruby
flintstones = %w[Fred Barney Wilma Betty Pebbles BamBam]
flintstones_hash = {}
flintstones.each_with_index { |name, index| flintstones_hash[name] = index }
```

2. --

```ruby
ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237,
}
age_total = 0
ages.each { |_, age| age_total += age }
```

3. --

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! { |_, age| age < 100 }
```

4. --

```ruby
ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237,
}
ages.values.min
```

5. --

```ruby
flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]
flintstones.index { |name| name.start_with?("Be") }
```

6. --

```ruby
flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]
flintstones.map! { |name| name[0, 3] }
```

7. --

```ruby
statement = "The Flintstones Rock"
letters = statement.split("")
letters.each_with_object({}) do |letter, frequency|
  next if letter == " "
  frequency[letter] ? frequency[letter] += 1 : frequency[letter] = 1
end
```

8. Modifying an array while iterating over it may change the quantify or value of the elements available to the iterator. Iterators do **not** operate on a copy of the object but on the original object.

```ruby
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
```

```text
# Output
1
3
```

```ruby
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
```

```text
# Output
1
2
```

9. --

```ruby
words = "the flintstones rock"
word_array = words.split
word_array.each { |word| word.capitalize! }
word_array.join(" ")
```

10. --

```ruby
munsters = {
  "Herman" => {
    "age" => 32,
    "gender" => "male",
  },
  "Lily" => {
    "age" => 30,
    "gender" => "female",
  },
  "Grandpa" => {
    "age" => 402,
    "gender" => "male",
  },
  "Eddie" => {
    "age" => 10,
    "gender" => "male",
  },
  "Marilyn" => {
    "age" => 23,
    "gender" => "female",
  },
}
munsters.each do |_, profile|
  profile["age_group"] =
    case profile["age"]
    when (0..17)
      "kid"
    when (18..64)
      "adult"
    when (65..)
      "senior"
    end
end
```

[lesson4]: /rb101/lesson_4/notes.md
[rb101]: /rb101/notes.md
[readme]: /README.md
[launch-school]: https://launchschool.com
