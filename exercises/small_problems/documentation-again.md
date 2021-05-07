[Launch School Core Curriculum][readme] >
[Exercises: Small Problems][small-problems] >
Documentation Again

# Documentation Again

Small Problems exercises from [Launch School's](https://launchschool.com) [Core Curriculum](https://launchschool.com/courses).

1. `File::path` is a class method and `File#path` is an instance method.
2. --

```ruby
puts Date.civil
# -4712-01-01

puts Date.civil(2016)
# 2016-01-01

puts Date.civil(2016, 5)
# 2016-05-01

puts Date.civil(2016, 5, 13)
# 2016-05-13
```

3. --

```ruby
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# [4, 5, 3, 6]
```

4. --

```ruby
a = [1, 4, 8, 11, 15, 19]
a.bsearch { |x| x > 8 }
```

5. --

```ruby
a = %w[a b c d e]

puts a.fetch(7)
# Throws an IndexError.

puts a.fetch(7, "beats me")
# "beats me"

puts a.fetch(7) { |index| index**2 }
# 49
```

6. --

```ruby
5.step(to: 10, by: 3) { |value| puts value }

# 5
# 8
```

7. --

```ruby
s = "abc"
puts s.public_methods(false).inspect
```

8. --

```ruby
a = [5, 9, 3, 11]
puts a.min(2)
# 3
# 5
```

9. https://docs.ruby-lang.org/en/2.7.0/Psych.html#method-c-load_file

<!-- internal links -->

[readme]: /README.md
[small-problems]: contents.md

<!-- external links -->

[core-curriculum]: https://launchschool.com/courses
[launch-school]: https://launchschool.com
