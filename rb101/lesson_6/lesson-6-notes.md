[Launch School Core Curriculum][readme] >
[RB101 Programming Foundations][rb101-notes] >
Lesson 6: Slightly Larger Programs

# Lesson 6: Slightly Larger Programs

Notes for Lesson 6 of [Launch School's][launch-school] RB101 course.

## Contents

- [Debugging with Pry](#debugging-with-pry)

## Debugging with Pry

- Add Pry and Pry-byebug to `Gemfile`.

```ruby
group :development do
  gem "pry", "~> 0.13.1"
  gem "pry-byebug"
end
```

- Add `require` statements to top of file.

```ruby
require "pry"
require "pry-byebug"
```

- `binding.pry` - Binds available variables to `pry` and starts pry REPL.
- Pry-byebug adds helpful commands.
  - `next` - Step over to the next line.
  - `step` - Step into the next line or method.
  - `continue` - Continue program execution and end Pry.

[rb101-notes]: /rb101/rb101-notes.md
[readme]: /README.md
[launch-school]: https://launchschool.com
