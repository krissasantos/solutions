def longest_word(sentence)
    
    longest_word = ""
    
    words = sentence.split(" ")
    
    words.each do |word|
        if longest_word.length < word.length
            longest_word = word
        else
            longest_word
        end
    end
    
    longest_word
end

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



