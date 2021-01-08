# Exercises: Ruby Basics

Notes for Ruby Basics Exercises from [Launch School’s](https://launchschool.com) RB100 course.

## Reading Documentation
1. https://docs.ruby-lang.org/en/
1. https://docs.ruby-lang.org/en/2.7.0/doc/syntax/control_expressions_rdoc.html#label-while+Loop
1. `nil` unless `break` is used to supply a value
1. Returns `nil` when no arguements are given to `break`
1. Use an underscore (`1_000_000`) to make large numbers easier to read
1. `:christopher_plain`
1. https://docs.ruby-lang.org/en/2.7.0/String.html
1. `#rjust`

## Reading Documentation 2
1. `"xyx".uppcase`
1. `a.insert(3, 5, 6, 7)`
1. `["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]`,
   `["abc def ghi", "jkl mno pqr", "stu vwx yz"]`,
   `["abc def ghi", "jkl mno pqr,stu vwx yz"]`

## Variable Scope
1. `7`
1. `7`
1. `7`
1. `Xy-zy`
1. `Xyzzy`
1. ```my_value': undefined local variable or method `a' for main:Object (NameError)``
1. `3`
1. ``undefined local variable or method `a' for main:Object (NameError)``
1. `7`
1. ``undefined method `+' for nil:NilClass (NoMethodError)``

## Loops 1
1. 
```ruby
loop do
  puts 'Just keep printing...'
  break
end
```
1. 
```ruby
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'
```
