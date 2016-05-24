# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.

def scramble_string(string, positions)
  new_string = '' #start with a string thats empty
  char = positions[idx]
  index = 0
  until index == string.length
   
   new_string = '' + char #receives a set of indices until it is equal to the string's length
   index += 1
    #Based on the indices given, it uses it as the string position to give the corresponding letter.
  end
  
  puts(new_string)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
  (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
)
puts(
  'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"): ' +
  (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm").to_s
)
