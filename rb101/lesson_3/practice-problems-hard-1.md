[Launch School Core Curriculum][readme] >
[RB101 Programming Foundations][rb101] >
[Lesson 3: Practice Problems][lesson3] >
Practice Problems: Hard 1

# Practice Problems: Hard 1

Exercises for Lesson 3 of [Launch School's][launch-school] RB101 course.

1. `greeting` will return `nil` even though the `if` block is not called the variable is initialized to `nil`.
2. Output is `{:a=>"hi there"}` because `informal_greeting` is a reference to the `"hi"` string which is then mutated.
3. --

- 'A' prints:

```text
one is: one
two is: two
three is: three
```

- 'B' prints:

```text
one is: one
two is: two
three is: three
```

- 'C' prints:

```text
one is: two
two is: three
three is: one
```

4. --

```ruby
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.length == 4

  while dot_separated_words.size > 0
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end
```

[lesson3]: contents.md
[rb101]: /rb101/notes.md
[readme]: /README.md
[launch-school]: https://launchschool.com
