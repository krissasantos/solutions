# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.


# Steps:
# 1. First while condition is for the first addend.
# 2. Second while condition is for the second addend

# 3. The first while condition makes sure the addend is used to try out if any of the elements totals to 0.
#     The second while condition uses idx2 starting with the value of 1 so the second addend starts with an element AHEAD of the first addend.
#     The second while loop stops once it reaches the last element. It gets out of the while loop and gose back to the first while loop 
#     and increases idx 1 again to go to the next element that will serves as the NEW first addend. 
    
  

def two_sum(nums)

  idx1 = 0
  idx2 = 1
  
  while idx1 < nums.length
    idx2 = idx1 + 1 #------>missed this line to increment idx2 for the next round or position
    while idx2 < nums.length
       sum = nums[idx1] + nums[idx2]
        if sum == 0
          return [idx1, idx2]
        end
          idx2 = idx2 + 1
        
    end
     idx1 = idx1 + 1
     
   end
 return nil
   
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
