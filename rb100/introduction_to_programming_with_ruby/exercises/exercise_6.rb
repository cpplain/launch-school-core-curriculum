# Exercise 5

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = numbers.select { |number| number % 2 == 1 }
new_array.push(11)
new_array.unshift(0)
new_array.pop
new_array.push(3)
p new_array.uniq!
