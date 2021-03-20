# Exercise 2

# Non-destructive merge
hash1 = { a: 1, b: 2 }
hash2 = { c: 3, d: 4 }
new_hash = hash1.merge(hash2)

puts hash1
puts new_hash

# Destructive merge
hash3 = { a: 1, b: 2 }
hash4 = { c: 3, d: 4 }
hash3.merge!(hash4)

puts hash3
