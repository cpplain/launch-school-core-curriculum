[Launch School Core Curriculum][readme] >
[RB101 Programming Foundations][rb101-notes] >
Lesson 6: Slightly Larger Programs

# Lesson 6: Slightly Larger Programs

Notes for Lesson 6 of [Launch School's][launch-school] RB101 course.

## Contents

- [Debugging with Pry](#debugging-with-pry)
- [Tic Tac Toe Problem Decomposition](#tic-tac-toe-problem-decomposition)
- [Walk-through: Tic Tac Toe](#walk-through-tic-tac-toe)

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

## Tic Tac Toe Problem Decomposition

- Before thinking about a solution, it's necessary to understand the problem and decompose it.
- Describing the problem and building a high-level flow chart is a good starting point.
- Example problem description:

```text
Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes a turn and marks a square on the board. First player to reach 3 squares in a row, including diagonals, wins. If all 9 squares are marked and no player has 3 squares in a row, then the game is a tie.
```

- Example high-level algorithm using informal pseudocode:

```text
1. Display the initial empty 3x3 board.
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!
```

- High-level algorithm can be used to create a flow chart.

## Walk-through: Tic Tac Toe

- [tic_tac_toe.rb](tic_tac_toe.rb)

[rb101-notes]: /rb101/rb101-notes.md
[readme]: /README.md
[launch-school]: https://launchschool.com
