def longest_word(sentence)
  
  longest_word = ''
  idx = 0
   
  
  words = sentence.split(" ") 
  
  

  while idx < words.length  #tried to replace each method with while loop. only 1 out of 3 is returning true. 
    word = words[idx]
    if longest_word.length < word.length 
      longest_word = word
    else 
      longest_word
    end
    idx = idx + 1
  
  end
  
  longest_word
  
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
