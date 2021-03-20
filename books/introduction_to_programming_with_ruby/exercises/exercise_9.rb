# Exercise 9

h = { a: 1, b: 2, c: 3, d: 4 }

puts h[:b]

h[:e] = 5

p h.delete_if { |key, value| value < 3.5 }
