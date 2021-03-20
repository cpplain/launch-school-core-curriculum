def upcase_if_gt(string)
  string.length > 10 ? string.upcase : string
end

puts upcase_if_gt("Hello, World")
puts upcase_if_gt("Pascal")
