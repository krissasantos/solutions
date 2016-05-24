# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(string)
 
  split_string = string.split(" ")
  
  idx = 0
  
  capitalized_result = []
  capitalized = nil
  
  while idx < split_string.length
    split_string[idx].capitalize!
    capitalized_result.push(split_string[idx])
   
    idx = idx + 1
  end
  
  capitalized_result.join(" ")
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.


puts(
  'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)
puts(
  'capitalize_words("i am layla") == "I Am Layla": ' +
  (capitalize_words("i am layla") == "I Am Layla").to_s
)

#why is this still false?
