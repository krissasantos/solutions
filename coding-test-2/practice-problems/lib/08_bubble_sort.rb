

# I - arr
# P - compare current element with the element after.
#     if current is greater, take the position of the element. 
#     idx2 = idx + 1 
#     (idx> idx2?) 
    
#     idx2 = idx
#     idx = idx2
    
        
# O - arr

# arr = [5,4,3,2,1,8] should be [1,2,3,4,5,8]

def bubble_sort(arr)
count = 0
    
arr.each do |x|  
  count = arr.count(x)
end

  if (arr == nil) || (count == 1) || (count == 0)
    return arr
    puts arr
  end 
  
  unless (arr == nil) || (count == 1) || (count == 0)
    arr.each do |x|
      if arr[x] > arr[x + 1]
        arr[x + 1] = arr[x]
        arr[x] = arr[x + 1]
        x +=1
      end
    end
    return arr
    puts arr
  end
end




   puts bubble_sort([])#.should == []
   puts bubble_sort([1])#.should == [1]
   puts bubble_sort([5, 4, 3, 2, 1])#.should == [1, 2, 3, 4, 5]
 