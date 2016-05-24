# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

# STEPS:
# 1. I made 3 variables to hold the values for the first, second and third greatest values in the set.
# 2. The while loop will stop if the index will be 1 less than the nums.length to scan all elements in the set
# 3. Inside the while loop are conditions to test if the value is the first, second or third greatest amongst all.
# 4. The first if condition is test if the current value is GREATER than the current FIRST GREATEST value. 
# If yes, the current value will now be the FIRST GREATEST value and the PREVIOUS FIRST GREATEST will now be the SECOND GREATEST.
# 5. The second (elsif) condition is to test the SECOND GREATEST value. if the current value is greater than
# the current SECOND GREATEST, then the current value would be the NEW SECOND GREATEST, and the PREVIOUS SECOND GREATEST 
# will move down to being the THIRD GREATEST.
# 5. The third (elsif) condition is to test if the current value is greater than the THIRD GREATEST. 
# If yes, it will be the NEW THIRD GREATEST and the PREVIOUS THIRD GREATEST will now be disregarded. 


def third_greatest(nums)
  first = nil
  second = nil
  third = nil
  index = 0
  
   
  while index < nums.length
    value = nums[index]  
    if first == nil || value > first
      third = second
      second = first
      first = value
     
      
    elsif second == nil || value > second
     
      third = second
      second = value
     
      
      
    elsif third == nil || value > third
      third = value
        
    end
    
    index += 1
  end
  
  third
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
