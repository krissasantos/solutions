

ANOTHER ORDER OF CODE:

# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.


def most_common_letter(string)


	# letter_count = 0 
	#The count should refresh every time the idx2 increments.
	#It means it's a new element, thus it shoud count back from 0. 
	
letter_repeated = ''

highest_count = 0
highest_repeated = ''
idx1 = 0


	while idx1 < string.length
		idx2 = 0
		letter_count = 0 
		
		#It should be here since every new idx1, the count refreshes
		#back to zero. #Every variable needed to be refreshed, and to be used
		#for the while loop must be placed before the 2nd loop starts.
		
		#but not the first or else, the count will never be refreshed and will
		#keep incrementing throughout the loop.
		
		while idx2 < string.length
			if string[idx2] == string[idx1] 
			  # letter_repeated = string[idx1] 
			  
			  #You don't need this ^^^ BECAUSE 
			  # THE ONLY THINGS YOUR COUNING IS STRING IDX1. AND IT WILL NEVER CHANGE
			  # OH MY GOD. SO. you only need to worry about THE COUNT OF IDX1.!! 
			  # and not what the "letter_repeated = string[idx]" is. SINCE IDX1 does not change ANYWAY
			  
				letter_count = letter_count + 1

			end
			if letter_count > highest_count 
			  highest_count = letter_count
			  highest_repeated = string[idx1]
			end
			
			#You can now relocate this and put it OUTSIDE THE LOOP of IDX2 to check
			# the count of IDX1. 
			idx2 += 1
		end
		idx1 += 1
	end

  [highest_repeated,highest_count] 
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
