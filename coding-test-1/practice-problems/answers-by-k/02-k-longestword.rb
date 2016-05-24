# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.


# Steps:
# 1. Split the 'sentence' string with split method
# 2. The sentence is now split into a new array called 'words'
# 3. I used the variable idx for the counter variable
# 4. I created two empty string variables called 'longest_word' and 'previous_word'. 
#     Both will hold the values of the word every time the loop runs through the array of words.
#     idx will then start at 0 having the loop run til it is 1 less than words.length.
#     to cover each index postion. This will scan each element or word to check on their lengths
    
# 5. If the previous_word length is still greater than the current word (which is represented by words[idx]),
#   previous_word will still take the longest_word. 
   
#   Otherwise, once the current word (word[idx]) will be greater than the previous_word, then the it shall take 
#   previous_word's place and become the NEW longest_word. 
# 6. Return longest_word
   

def longest_word(sentence)
  words = sentence.split("") #This automically creates a new array with the string split already right?
  idx = 0
  # initially the longest word is empty
  
  longest_w = ''
  
  # We will loop over the current word.
  
  while idx < words.length
    if (words[idx].length > longest_w.length)
      longest_w = words[idx]
    else 
      longest_w = longest_w
    end
    
    idx = idx + 1
  end
  
  return longest_w
end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
