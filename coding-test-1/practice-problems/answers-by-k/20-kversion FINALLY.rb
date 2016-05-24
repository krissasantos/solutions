# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
    
idx1 = 0    #Made a counter for first loop
idx2 = 0    #Made another counter for the second loop
repeat_count = 0 #Assigned a variable to tally the number of letters that had repeated in the string
current_repeat_count= []
idx3 = 0
    while idx1 < string.length #The characters in the string will be scanned over and over again until it reaches the string.length
          idx2 = idx1 + 1 #the the second loop will always be 1 element ahead of the idx1 to scan them properly
                    
        while idx2 < string.length #Same logic with the first loop
            unless current_repeat_count[idx3] == string[idx2]
                if string[idx1] == string[idx2] #if the current element of idx1 is the same with the current element of idx2, 
                           current_repeat_count << string[idx2]
                           repeat_count = repeat_count + 1# repeat_count will increase by 1 each time
                end
            end
            
            idx2 = idx2 + 1 #idx2 will increase by 1 to go to the next element
        end
        idx1 = idx1 + 1 #after the first round of the first element pairs up with the rest of the elements, 1 will be added 
    end                 #to go the next element to  be compared with the rest
    
    return repeat_count #once it's done, the code returns the tally of repeated letters. 

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
