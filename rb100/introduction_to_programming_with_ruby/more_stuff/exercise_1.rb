# Exercise 1

words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

words.each { |word| puts word if /lab/.match(word) }
