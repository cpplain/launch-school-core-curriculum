1. a method that returns the sum of two integers

   ```
   START

   # Given two integers called "num1" and "num2"

   num1 + num2

   END
   ```

2. a method that takes an array of strings and returns a string that is all those strings concatenated together

   ```
   START

   # Given an array of strings called "strings"

   SET iterator = 1
   SET concated_string = new empty string

   WHILE iterator <= length of strings
     concated_string += value at location "iterator" of strings array

   concated_string

   END
   ```

3. a method that takes an array of integers and returns a new array with every other element

   ```
   START

   # Given an array of integers called "numbers"

   SET iterator = 1
   SET every_other_num = new empty array

   WHILE iterator <= length of numbers
     IF iterator is odd
       every_other_num += value at location "iterator" of numbers array

   every_other_num

   END
   ```
