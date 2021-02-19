[Launch School Core Curriculum][readme] >
[RB101 Programming Foundations][rb101-notes] >
[Lesson 5: Advanced Ruby Collections][lesson5] >
Practice Problems: Sorting, Nested Collections and Working with Blocks

# Practice Problems: Sorting, Nested Collections and Working with Blocks

Exercises for Lesson 5 of [Launch School's][launch-school] RB101 course.

1. --

```ruby
arr = %w[10 11 9 7 8]
arr.sort { |a, b| b.to_i <=> a.to_i }
```

2. --

```ruby
books = [
  {
    title: "One Hundred Years of Solitude",
    author: "Gabriel Garcia Marquez",
    published: "1967",
  },
  {
    title: "The Great Gatsby",
    author: "F. Scott Fitzgerald",
    published: "1925",
  },
  { title: "War and Peace", author: "Leo Tolstoy", published: "1869" },
  { title: "Ulysses", author: "James Joyce", published: "1922" },
]
books.sort_by { |book| book[:published] }
```

3. --

```ruby
arr1 = ["a", "b", ["c", %w[d e f g]]]
arr1[2][1][3]

arr2 = [{ first: %w[a b c], second: %w[d e f] }, { third: %w[g h i] }]
arr2[1][:third][0]

arr3 = [["abc"], ["def"], { third: ["ghi"] }]
arr3[2][:third][0][0]

hsh1 = { "a" => %w[d e], "b" => %w[f g], "c" => %w[h i] }
hsh1["b"][1]

hsh2 = {
  first: {
    "d" => 3,
  },
  second: {
    "e" => 2,
    "f" => 1,
  },
  third: {
    "g" => 0,
  },
}
hsh2[:third].keys[0]
```

4. --

```ruby
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{ a: 1 }, { b: 2, c: [7, 6, 5], d: 4 }, 3]
arr2[2] = 4

hsh1 = { first: [1, 2, [3]] }
hs1[:first][2][0] = 4

hsh2 = { ["a"] => { a: ["1", :two, 3], b: 4 }, "b" => 5 }
hsh2[["a"]][:a][2] = 4
```

5. --

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
total_ages = 0
munsters.each_value do |profile|
  total_ages += profile["age"] if profile["gender"] == "male"
end
total_ages
```

6. --

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
munsters.each do |name, profile|
  puts "#{name} is a #{profile["age"]}-year-old #{profile["gender"]}."
end
```

7. `a => 2`, `b => [3, 8]`

8. --

```ruby
hsh = {
  first: %w[the quick],
  second: %w[brown fox],
  third: ["jumped"],
  fourth: %w[over the lazy dog],
}
vowels = "aeiou"
hsh.each do |_, words|
  characters = words.join.chars
  characters.each { |chr| puts chr if vowels.include?(chr) }
end
```

9. --

```ruby
arr = [%w[b c a], [2, 1, 3], %w[blue black green]]
arr.map { |inner| inner.sort { |a, b| b <=> a } }
```

10. --

```ruby
arr = [{ a: 1 }, { b: 2, c: 3 }, { d: 4, e: 5, f: 6 }]
arr.map do |hsh|
  hsh_map =
    hsh.map do |element|
      element[1] += 1
      element
    end
  hsh_map.to_h
end
```

11. --

```ruby
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
arr.map { |inner| inner.select { |num| num % 3 == 0 } }
```

12. --

```ruby
arr = [[:a, 1], %w[b two], ["sea", { c: 3 }], [{ a: 1, b: 2, c: 3, d: 4 }, "D"]]
hsh = {}
arr.each { |key, value| hsh[key] = value }
hsh
```

13. --

```ruby
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
arr.sort_by { |inner| inner.select { |num| num.odd? } }
```

14. --

```ruby
hsh = {
  "grape" => {
    type: "fruit",
    colors: %w[red green],
    size: "small",
  },
  "carrot" => {
    type: "vegetable",
    colors: ["orange"],
    size: "medium",
  },
  "apple" => {
    type: "fruit",
    colors: %w[red green],
    size: "medium",
  },
  "apricot" => {
    type: "fruit",
    colors: ["orange"],
    size: "medium",
  },
  "marrow" => {
    type: "vegetable",
    colors: ["green"],
    size: "large",
  },
}
hsh.map do |_, details|
  if details[:type] == "fruit"
    details[:colors].map { |color| color.capitalize }
  elsif details[:type] == "vegetable"
    details[:size].uppercase
  end
end
```

15. --

```ruby
arr = [
  { a: [1, 2, 3] },
  { b: [2, 4, 6], c: [3, 6], d: [4] },
  { e: [8], f: [6, 10] },
]
arr.select { |hsh| hsh.all? { |_, numbers| numbers.all? { |num| num.even? } } }
```

16. --

```ruby
def new_uuid
  uuid = ""
  num_to_hex = {
    10 => "a",
    11 => "b",
    12 => "c",
    13 => "d",
    14 => "e",
    15 => "f",
  }
  (1..36).each do |i|
    if [9, 14, 19, 24].include?(i)
      uuid << "-"
    else
      num = Random.rand(0..15)
      character = (0..9).include?(num) ? num.to_s : num_to_hex[num]
      uuid << character
    end
  end
  uuid
end
new_uuid
```

[lesson5]: /rb101/lesson_5/lesson-5-notes.md
[rb101-notes]: /rb101/rb101-notes.md
[readme]: /README.md
[launch-school]: https://launchschool.com
