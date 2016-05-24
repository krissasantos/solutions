# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.
# Steps:

# 1. Assigned idx as the counter variable and as the position numbeer as well for the first while condition 
# 2. The first while loop will go on until idx reaches 1 less than the string.length. This shall cover all elements inside the string
# 3. Inside the while loop, I created the SECOND while loop that shall scan for the letter a. If that current letter, (represented ny string[idx]) 
#     is an "a" Then it will enter another condition using "until" to look for the z within the 3 letters after a. 
#     I used the variable 'counter' to make sure the 
#    UNTIL loop stops when it reaches 3. In this loop, we scan the z by making another condition within the until loop => string[idx] == 'z'?  If yes,
#     return true.
# 4. The loop increments once again to see if the next letter is a, and if it is, the code will go to the next loops inside to see if there's a
# 'z' within the first 3 letter after that a. Loop stops when the counter reaches 3. Increments again for the first while loop to see if the next letter 
# is a. 

def nearby_az(string)
    
  idx = 0
  
  while idx < string.length
  
    counter = 0
    
    while string[idx] == 'a'
      until counter == 3
        idx = idx + 1
        
        if string [idx] == 'z'
          return true
        end
        counter = counter + 1
      end
    end 
    
    idx = idx + 1
  end
    
  return false
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
