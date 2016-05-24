# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)

#Step 1: I am trying to scan through the string's characters. so I created an idx and
#and while loop until idx reaches 1 less than the string's length
#Step 2: Inside the while loop I am converthing the current character into its ASCII code.
# => code = string[idx].ord
# Step 3 I then add the value of the offset to that code making it a new code
#Step 4 I convert the new code into a char
#Step 5 I add that char to the new_string
#This will loop until idx reaches 1 less than the string's length.


 # code = char.ord
    # code = code + offset
    # code.chr
    # new_string = code + ''

def caesar_cipher(offset, string)
  #string.each_char do |char| 

  new_string = ""

 
        string.each_char do |character|
            # unless letter.ord == 32 
            if character == " "
                new_string += character
            end
            
            unless character == " "
                new_code = character.ord + offset
                
                # if offset_code > 122
                if new_code > 122
                    result = new_code - 122
                    new_character = (97 + result-1).chr
                    # offset_code = offset_code - 122
                else 
                    new_character = new_code.chr
                end    
                puts new_string += new_character.to_s
            end
       end
       new_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'caesar_cipher(3, "abc") == "def": ' +
  (caesar_cipher(3, 'abc') == 'def').to_s
)
puts(
  'caesar_cipher(3, "abc xyz") == "def abc": ' +
  (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
)
