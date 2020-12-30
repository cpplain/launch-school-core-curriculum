# Exercise 1

family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

immediate_family = family.select { |key, value| key == :sisters || key == :brothers }
arr = immediate_family.values.flatten
p arr
