# I 
# string in variable input (word)


# P 
# Split word into letters. 
# Compare the keys (in the hash map complete with all letters with morse code conversion) with the letter 
#   (i.e: letters = word.split("") >> letters[idx] == key ?
# Add that value to a new set.

# (Before conversion)
# Check count of string

# (After conversion)
# If count >1, join string by ("  ") if count < 1 join string by (" ") >> two spaces vs one space
  
  
  
# O
# morse-code conversion of the string
HASH = { #Why make this a constant? 
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--.."
  }

def morse_encode(str)
  words = str.split(" ") #why does this need space?
  converted_words = words.map { |word| morse_encode_word(word) }
  converted_words.join("  ") #even letters within a word will have a single space when the map returns
                              #so you can automatically join the rest of the words with two spaces from here.
end

def morse_encode_word(word)
  letters = word.split("")
  converted_letters = letters.map { |x| HASH[x] }
  converted_letters.join(" ")
end


# def morse_encode(str)
#   words = str.split(" ") #why does this need space?
    # words.each do |word|
    #   morse_encode_word(word)
    # end
    # converted = words.map { |word| morse_encode_word(word) }

  #def morse_encode_word(word)
  # converted = []
  # count = word.count
  # if count == 1 
  #   return#one space if single char
  # else
  #   return converted_letters.join("  ")#double space if more than 1
  # end




  