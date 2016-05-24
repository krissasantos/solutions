# I - arr
# P - compare current element with the element after.
#     if current is greater, take the position of the element. 
#     idx2 = idx + 1 
#     (idx> idx2?) 
#     idx2 = idx
#     idx = idx2
# O - arr
#---------------------------------each method ---------
# def bubble_sort(arr)
# count = 0
    
# arr.each do |x|  
#   count = arr.count(x)
# end

#   if (arr == nil) || (count == 1) || (count == 0)
#     return arr
#     puts arr
#   end 
  
#   unless (arr == nil) || (count == 1) || (count == 0)
    
    # arr.each do |x|
    #   if arr[x] > arr[x + 1]
    #     arr[x], arr[x + 1] = arr[x + 1], arr[x]
    #   end
    # end
#     return arr
#     puts arr
  
#   end
# end
#---------------------------------------------------------------------------------
#correct result but does not do the exact algorithm asked. 
# def bubble_sort(arr)
# count = 0
# arr.sort!
#     return arr
# end
#____________________________________________________________________________________

#Steps: 

#1. Demonstrate the bubble sort algorithm
#2. Scan through each element and compare the current index and the next one to it in each run
#3. If the current element is greater, switch the positions.
#4. Until it reaches the sorted order, sorted would be equal to false.
#5. return arr


def bubble_sort(arr)
count = 0
sorted = nil
    # until sorted == true  #why doesnt this work?
    until sorted == true
      sorted = true
      (arr.length - 1).times do |x| 
        #When using times, wouldnt you need to iniate the start value of x?
        #how does it know it's scanning the entire array?
        if arr[x] > arr[x + 1]
          arr[x], arr[x + 1] = arr[x + 1], arr[x]
          sorted = false
        end
      end
    end
   return arr
   puts arr
end

  print bubble_sort([])#.should == []
  print bubble_sort([1])#.should == [1]
  print bubble_sort([5, 4, 3, 2, 1])#.should == [1, 2, 3, 4, 5]
   
# why use '.times' over .each?  
    # arr.each do |x|
    #   if arr[x] > arr[x + 1]
    #     arr[x], arr[x + 1] = arr[x + 1], arr[x]
    #   end
    # end