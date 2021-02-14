# Problem
# - input: Hash containing produce
# - output: Hash containing fruit
# - rules: Return a new hash
#
# Examples
# - input:
#   {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
#   }
# - output: => {"apple"=>"Fruit", "pear"=>"Fruit"}
#
# Data Structure
# - Hash
#
# Algorithm
# - Set variable with array of hash keys
# - Initialize return hash
# - Initialize counter variable to zero
# - Begin loop
# - Break if counter equals length of key array
#   - Move this to the top due example shown in lesson
#   - Done in case hash is empty
# - Get key from array using counter number as array index
# - Get value of key from hash
# - Add key-value pair to new return hash if value equals "Fruit"
# - Increment counter by 1

def select_fruit(produce)
  keys = produce.keys
  fruit = {}
  counter = 0

  loop do
    break if counter == keys.length

    key = keys[counter]
    value = produce[key]
    fruit[key] = value if value == 'Fruit'

    counter += 1
  end

  fruit
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
