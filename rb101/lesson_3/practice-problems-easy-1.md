[Launch School Core Curriculum](/README.md) >
[RB101 Programming Foundations](/rb101/rb101_notes.md) >
[Lesson 3: Practice Problems](/rb101/lesson_3/lesson_3_contents.md) >
Practice Problems: Easy 1

# Practice Problems: Easy 1

Exercises for Lesson 3 of [Launch School’s](https://launchschool.com) RB101 course.

1.  Expected output:
    ```
    1
    2
    2
    3
    ```
2.  When part of a method name, `!` and `?` are part of the method name and not part of Ruby syntax. In other uses:
    1.  `!=` is a conditional operator meaning not equal
    2.  `!` before an object converts the boolean value of thie object to its oposite, ex: `!true == false`
    3.  A trailing `!` is part of a method name
    4.  `? :` is the ternary operator and can be used in place of an `if/else` statement
    5.  A trailing `?` is part of a method name
    6.  `!!` returns the objects boolean equivalent
3.  `advice.gsub!("important", "urgent")`
4.  `#delete_at` deletes the element at the given index and `#delete` deletes all the elements that equal the given object
5.  `(10..100).cover? 42`
6.  `"Four score and #{famous_words}"`, `famous_words.insert(0, "Four score and ")`
7.  `flintstones.flatten!`
8.  `flintstones.assoc("Barney")`
