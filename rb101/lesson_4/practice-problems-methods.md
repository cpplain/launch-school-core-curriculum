[Launch School Core Curriculum][readme] >
[RB101 Programming Foundations][rb101] >
[Lesson 4: Ruby Collections][lesson4] >
Practice Problems: Methods and More Methods

# Practice Problems: Methods and More Methods

Exercises for Lesson 4 of [Launch School's][launch-school] RB101 course.

1. The return value is `[1, 2, 3]` because `select` performs the selection based on the truthiness of the block return, which in this case is `"hi"`, a "truthy" value.
2. Counts the number of elements for which the block returns a true value.
3. The return value is `[1, 2, 3]` because `reject` returns a new array with every element for which the block evaluates to **not** true, in this case every iteration is `nil` ("falsey"), the return value of `puts`.
4. The return value is `{"a"=>"ant","b"=>"bear","c"=>"cat"}` because the block adds a key-value pair to the hash object that was passed to `each_with_object` when invoked, this hash object then becomes the return value.
5. `shift` removes `{ a: 'ant' }` from the hash and returns `[:a, "ant"]`.
6. The return value is `11` because `pop` removes and returns the last element of the array and `size` returns the length of the string returned by `pop`.
7. The block's return value is determined by `odd?` and is `true` when odd and `false` when even; the return value of `any?` is `true` and the output is `1`.
8. `take` returns the first `n` elements from the array and is non-destructive.
9. The return value is `[nil, "bear"]` because `map` returns a new array with the values of the block; the `if` statement evaluates to `false` the first iteration and returns `nil` and evaluates to `true` the second iteration returning the value `"bear"`.
10. The return value is `[1, nil, nil]` because the `num` is returned the first iteration but the return value of `puts` (`nil`) is returned the next two iterations.

[lesson4]: /rb101/lesson_4/notes.md
[rb101]: /rb101/notes.md
[readme]: /README.md
[launch-school]: https://launchschool.com
