# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.


def most_common_letter(string)





highest_count = 0
highest_repeated = ''
idx1 = 0

	while idx1 < string.length
		
		letter_repeated = string[idx1]
		letter_count = 0
		idx2 = 0

		while idx2 < string.length
			if string[idx2] == string[idx1]
			  
				letter_count = letter_count + 1

			end
			idx2 += 1
		end
		
			if letter_count > highest_count 
			   highest_count = letter_count
			   highest_repeated = letter_repeated
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



