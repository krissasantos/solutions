# Ordered Vowels #03
# Write a method, ordered_vowel_words(str) that takes a string of lowercase words 
# and returns a string with just the words containing all their vowels (excluding "y") in alphabetical order. 
# Vowels may be repeated ("afoot" is an ordered vowel word).

# You will probably want a helper method, ordered_vowel_word?(word) which returns true/false if a word's vowels are ordered.

# Difficulty: 2/5
#______________________________________________________________________________________________

# I - string (str)
# P(2 methods) 
#   - 1. def ordered_vowel_word?(word[idx])
#     2.def ordered_vowel_words(str)
#    - Create a method ordered_vowel_words(str) to test the words in the string if they return true
#     
#     Inside 
#   - First, split str into word array. Split the string and name the split set "word" ->words = str.split("")
#   
#   - Use each method or while method to scan each word
#_______________________________________________
#     while idx < word.length 
#             ordered_vowel_word?(word)
#         if false
#             words.delete(word)
#         end
#         idx +=1
#     end
#     words.join("")
#     return words.to_s
#_______________________________________________
#     if false delete from the words array
#   - After the while loop is through, join the words back into a string
#   - Return string (words.to_s)
# O - String (words.to_s)

def ordered_vowel_word?(word)
  vowel_index_arr = []  
  word.each_char do |letter|
    if (letter == 'a')||(letter == 'e')||(letter == 'i')||(letter == 'o')||(letter == 'u')
      vowel_index = word.index(letter)
      vowel_index_arr << vowel_index
    end
  vowel_index_arr.all? { |index, index2| index < index2 } 

end    
   
def ordered_vowel_words(str)
    words = str.split("")
    words.each do |word|
        ordered_vowel_word?(word)
        if false
            words.delete(word)
        end
    
    words.join("")
    return words.to_s
end


