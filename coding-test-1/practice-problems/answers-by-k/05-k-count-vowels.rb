# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

# Steps: 

# 1. Made the variable idx as the counter for the loop and position number to scan the elements in the string
# 2. Made another variable vowel_count to tally the number of vowels for every round in the loop
# 3. The while codition indicates that the if else statement and loop shall keep going until the idx is 1 less than the string.length
# 4. To get the vowels, I made one condition each for "a", "e", "i" , "o",  "u". The loop is able to identify these letters by using string[idx]
#     If the current element turns out to be a vowel, the varialble vowel_count tallies it by the equation vowel_count = vowel_count + 1 with vowel_count
#     starting with the value of 0.
# 5. Return vowel_count

def count_vowels(string)
    idx = 0
    vowel_count = 0
    
    while idx < string.length
      if (string[idx] == "a") || (string[idx] == "e") || (string[idx] == "i") ||  (string[idx] == "o") ||  (string[idx] == "u")
        vowel_count = vowel_count + 1
      end
      idx = idx + 1 ## when do i put it inside or outside the while loop? --> Put i just before the end statement of the loop
    end
    
    return vowel_count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
