# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.
# Steps: 
# 1. Did the same thing to two sum. One while loop for the first element and another while loop for the second.
#   The first while loop will only repeat after the second loop is through scanning all elements.
  
# 2. If a letter repeats, the current_count tallies it. 
# 3. If the next element has more of its letter repeated, the the current_count will not be the longest_count,
# and that string[idx] will now be the  most_letter until another one replaces it. 

def most_common_letter(string)
  idx1 = 0 
  # I don't think its a good idea to declare the second index out of the loop.
  #idx2 = 1
  current_count = 0
  longest_count = 0
  most_letter = ''

  while idx1 < string.length
    idx2 = idx1 + 1
    while idx2 < string.length
      if string[idx1] == string[idx2]
        current_count = current_count + 1
        
        
        # How do you move to the next index 2 character?
        # Looks like an infinite loop again
        
      end
      idx2 += 1
    end
      
    if current_count > longest_count
      longest_count = current_count
      most_letter = string[idx1]
    end
        
    # This is an infinite loop
    # When do you stop the execution
    # When you you move to the next idx1? 
    idx1 += 1
  end
   
    puts [string[idx1], longest_count]
    # return [string[idx1], longest_count].to_s
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
