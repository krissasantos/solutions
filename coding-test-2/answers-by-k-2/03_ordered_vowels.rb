


#___________________________________________WHILE___________________________________________________
#8 FAILURES
# def ordered_vowel_words(str)
#     word = str.split(" ")
#     result = []
    
#     idx = 0
#     while idx < word.length
#       ordered_vowel_word?(word)
#       if true
#         result << word 
        
#       end
#       idx +=1
#     end
#     result.join(" ")
# end
#_____________________________________________________________________________________________________

#STEPS
# ordered_vowel_words(str)
# 1. Split the STRING input into WORDS and assign a name for its array  (i.e: word = str.split(“”))
# 2. After the split, insert the ordered_vowel_word?method to check if it returns true or not




# ordered_vowel_word?(word)
# 3. Split the WORD into LETTERS
# 	Scan each letter of the word and select the vowels
# 4. Compare the vowels with each other (no need to get indices as the alphabet c	ontains its own set of values per letter.

# 5. Compare the indices if they are in ascending order via condition: index[idx] <= index[idx2]
# 6. Return True or false


def ordered_vowel_words(str)
    words = str.split(" ")
    
    
    result = words.select do |word|
      ordered_vowel_word?(word)#does this automatically assume it's true?
    end
    
    
    result.join(" ")
end



def ordered_vowel_word?(word)
  letters_arr = word.split("") # word = 'apple' => letter = ['a','p','p','l','e']
  vowels_arr = letters_arr.select { |x| ((x == 'a')||(x == 'e')||(x == 'i')||(x == 'o')||(x == 'u'))}
  
  
  
  
  
  # AREA OF ERROR: vowels_arr.all? do |i| #this is wrong because you're i is supposed to be an integer. as it is used as a position number to compare alphaphet
  

  
  (0...(vowels_arr.length - 1)).all? do |i| # NOT vowels.all? do |idx| that's why there's a string to integer conversion error
    vowels_arr[i] <= vowels_arr[i + 1] #the alphabet has its value system too. so no need to get indices only
  end
end















# def ordered_vowel_word?(word)
#   vowel_index_arr = []  
#   word.each_char do |letter|
#     if (letter == 'a')||(letter == 'e')||(letter == 'i')||(letter == 'o')||(letter == 'u')
#         word.index { |x| vowel_index_arr << x }
#     end
#   end
#   # vowel_index_arr.all? { |index, index2| index < index2 } 
#   vowel_index_arr.all? do |index|
#     vowels_index_arr[index] <= vowels_index_arr[index + 1]
#   end
# end




