[Launch School Core Curriculum][readme] >
[RB101 Programming Foundations][rb101] >
[Lesson 3: Practice Problems][lesson3] >
Practice Problems: Medium 1

# Practice Problems: Medium 1

Exercises for Lesson 3 of [Launch School's][launch-school] RB101 course.

1. `10.times { |num| puts " " * num + "The Flintstones Rock!" }`
2. Statement returns a `TypeError` and can be fixed with either of the following:

```ruby
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"
```

3. --

```ruby
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end
```

4. The first method modifies the input argument array and the second will not modify the input argument array.
5. The method returns an undefined local variable error because `limit` is defined outside the method and out of scope. This can be fixed by adding `limit` as a parameter to the method.
6. `32`
7. Yes, the data is modified. `demo_hash` references the same object_id as `munsters` and the expressions modify the referenced hash.
8. `"paper"`
9. `"no"`

[lesson3]: contents.md
[rb101]: /rb101/notes.md
[readme]: /README.md
[launch-school]: https://launchschool.com
