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
converted = []
hash = {"a" => ".-",
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
  
  words = str.split("")
    words.each do |word|
      morse_encode_word(word)
    end
end

def morse_encode_word(word)
  count = word.count
  letters = word.split("")
  
  letters.each do |x|
    converted << hash[x] 
  end
  
  if count == 1 
    return converted.join(" ")#one space if single char
  else
    return converted.join("  ")#double space if more than 1
  end
  
  
end


  