[Launch School Core Curriculum](/README.md) >
[RB101 Programming Foundations](/rb101/rb101_notes.md) >
[Lesson 3: Practice Problems](/rb101/lesson_3/lesson_3_contents.md) >
Practice Problems: Hard 1

# Practice Problems: Hard 1

Exercises for Lesson 3 of [Launch School’s](https://launchschool.com) RB101 course.

1.  `greeting` will return `nil` even though the `if` block is not called the variable is initialized to `nil`
2.  Output is `{:a=>"hi there"}` because `informal_greeting` is a reference to the `"hi"` string which is then mutated
3.  --
    1.  'A' prints:
        ```
        one is: one
        two is: two
        three is: three
        ```
    2.  'B' prints:
        ```
        one is: one
        two is: two
        three is: three
        ```
    3.  'C' prints:
        ```
        one is: two
        two is: three
        three is: one
        ```
4.  --
    ```ruby
    def dot_separated_ip_address?(input_string)
      dot_separated_words = input_string.split(".")
      return false unless dot_separated_words.length == 4

      while dot_separated_words.size > 0 do
        word = dot_separated_words.pop
        return false unless is_an_ip_number?(word)
      end

      true
    end
    ```
