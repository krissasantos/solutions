# I(2) - ARRAY (arr)
#       - INDEX (idx)
# # P     Variables: arr, idx, before and after, before_2
#       - Compare the index before vs the index (idx) chosen.
#             If BEFORE is greater, return that, which is arr[idx - 1]. 
#             Whether or not the other one is greater too. 
#             Nearest larger should always be to the left.
            
#       - If the index before is NOT larger, check the index AFTER. Return (after) if it is, 
#          which is arr[idx + 2]
#          IF after is NOT larger then the chosen index
#          CHECK BEFORE_2
#          If before_2 IS larger, return that, which is (idx - 2)
         
#          - else return nil.
# # O  # index nearest larger
#      Variables: return before, after, before_2 or nil

# Each god's logic 

  # I - Array & integer
  # P -
  # O - integer
  #
  # Constraints:
  # The item at the input index should be less than the item from the return index
  # There is no other return index closer to the input index than the return index i.e. distance 
  # If there is a tie, look for the number closest to the left i.e lesser index

  # Summary: We are looking for the index of the number greater than the number in the input index

  # Get the value of the number at the input index
  # Loop over the array
  # Compare the value of each item to the input index
  # If the value of the item is greater than the value of the input index
  # Then get the index of that value and return it
  # Repeat the process


def nearest_larger(arr, idx)
  after = idx + 1
  before = idx - 1
  before_2 = idx - 2
  after_2 = idx + 2
  
  
  if (before >= 0) && (arr[before] > arr[idx]) 
    return before
  elsif (after < arr.length) && (arr[after] > arr[idx])
    return after
  elsif  (before_2 >= 0) && (arr[before_2] > arr[idx])
    return before_2
  elsif (before == 0) && (arr[before] < arr[idx]) && (arr[after] < arr[idx]) && (arr[after_2]> arr[idx])
    return after_2 
  elsif (before < 0) || (arr[before_2] < arr[idx]) || (before_2 < 0)
    return nil
  end
end

  # puts  nearest_larger([2,3,4,8], 2) #== 3
  # puts  nearest_larger([2,8,4,3], 2) #== 1
  # puts  nearest_larger([2,6,4,8], 2) #== 1
  # puts  nearest_larger([2,6,4,6], 2) #== 1
  # puts  nearest_larger([8,2,4,3], 2) #== 0
  # puts  nearest_larger([2,4,3,8], 1) #== 3
  # puts  nearest_larger([2, 6, 4, 8], 3) #== nil
  # puts  nearest_larger([2, 6, 9, 4, 8], 3) #== 2
  
  
  #To see the result for each, add "put" + return value variable 
  #  i.e: return after
  #       put after
  


