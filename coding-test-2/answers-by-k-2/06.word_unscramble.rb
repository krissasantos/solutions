# I - a scrambled word and a dcitionary of words (2 strings)
# P - compare the scrambled word with all the toher words. check if they have the same letters. tht means it's an anagram.
# O - all words that have the same letters.

def word_unscrambler(str, words)
  anagram = []    
  letters = str.split("").sort #ex: 'cat'
  other_words = words.split("") #ex 'tac', tic, toc == tac
    
  other_words.each do |o_word|
    # letters_of_other_words = other_words[x].split("")
    letters_of_other_words = o_word.split("").sort
    # letters.all?(letters.include(letters_of_other_words)
    if letters == letters_of_other_words
      anagram << o_word
    end
  end
  return anagram
  puts anagram
end


