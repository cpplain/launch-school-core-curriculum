[Launch School Core Curriculum][readme] >
[RB101 Programming Foundations][rb101-notes] >
[Lesson 3: Practice Problems][lesson3] >
Practice Problems: Medium 2

# Practice Problems: Medium 2

Exercises for Lesson 3 of [Launch School’s][launch-school] RB101 course.

1. Prediction of values and object ids (ids simulated):

```text
# Before the block
a_outer == 42               && a_outer.object_id == 1
b_outer == "forty two"      && b_outer.object_id == 2
c_outer == [42]             && c_outer.object_id == 3
d_outer == 42               && d_outer.object_id == 1

# Inside the block
a_outer == 42               && a_outer.object_id == 1
b_outer == "forty two"      && b_outer.object_id == 2
c_outer == [42]             && c_outer.object_id == 3
d_outer == 42               && d_outer.object_id == 1

# Inside after reassignment
a_outer == 22               && a_outer.object_id == 4
b_outer == "thirty three"   && b_outer.object_id == 5
c_outer == [44]             && c_outer.object_id == 6
d_outer == 44               && d_outer.object_id == 7

# Inside the block
a_inner == 22               && a_inner.object_id == 4
b_inner == "thirty three"   && b_inner.object_id == 5
c_inner == [44]             && c_inner.object_id == 6
d_inner == 44               && d_inner.object_id == 7

# After the block
a_outer == 22               && a_outer.object_id == 4
b_outer == "thirty three"   && b_outer.object_id == 5
c_outer == [44]             && c_outer.object_id == 6
d_outer == 44               && d_outer.object_id == 7

# The following are out of scope outside of the block
a_inner
b_inner
c_inner
d_inner
```

2. Prediction of values and object ids (ids simulated):

```text
# Before the method
a_outer == 42               && a_outer.object_id == 1
b_outer == "forty two"      && b_outer.object_id == 2
c_outer == [42]             && c_outer.object_id == 3
d_outer == 42               && d_outer.object_id == 1

# Inside the method
a_outer == 42               && a_outer.object_id == 1
b_outer == "forty two"      && b_outer.object_id == 2
c_outer == [42]             && c_outer.object_id == 3
d_outer == 42               && d_outer.object_id == 1

# Inside after reassignment
a_outer == 22               && a_outer.object_id == 4
b_outer == "thirty three"   && b_outer.object_id == 5
c_outer == [44]             && c_outer.object_id == 6
d_outer == 44               && d_outer.object_id == 7

# Inside the method
a_inner == 22               && a_inner.object_id == 4
b_inner == "thirty three"   && b_inner.object_id == 5
c_inner == [44]             && c_inner.object_id == 6
d_inner == 44               && d_inner.object_id == 7

# After the method
a_outer == 42               && a_outer.object_id == 1
b_outer == "forty two"      && b_outer.object_id == 2
c_outer == [42]             && c_outer.object_id == 3
d_outer == 42               && d_outer.object_id == 1

# The following are out of scope outside of the method
a_inner
b_inner
c_inner
d_inner
```

3. The code will display the following because the outer string variable remains unchanged as the inner variable is assigned to a new object but the array variable is mutated.

```text
My string looks like this now: pumpkins
My array looks like this now: ["pumpkins", "rutabaga"]
```

4. The code will display the following because the outer string variable is mutated but the array variable remains unchanged as the inner variable is assigned a new object.

```text
My string looks like this now: pumpkinsrutabaga
My array looks like this now: ["pumpkins"]
```

5. We can change the method to return values instead of mutating arguments.

```ruby
def tricky_method(a_string_param, an_array_param)
  a_string_param += 'rutabaga'
  an_array_param += ['rutabaga']
  return a_string_param, an_array_param
end

my_string = 'pumpkins'
my_array = ['pumpkins']
my_string, my_array = tricky_method(my_string, my_array)
```

6. Code can be simplified by using the implicit return value of the conditionals.

```ruby
def color_valid(color)
  color == 'blue' || color == 'green'
end
```

[lesson3]: lesson-3-contents.md
[rb101-notes]: /rb101/rb101-notes.md
[readme]: /README.md
[launch-school]: https://launchschool.com
