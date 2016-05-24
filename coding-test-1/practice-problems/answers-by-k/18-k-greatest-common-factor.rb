# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  
  idx = 1 #This will be used as the divisor for both numbers accepted.
  gcf = 0
  
  while (idx <= number1) && (idx <= number2)
  
  modulo1 = number1 % idx  #Made 2 modulo variables with the same equation. This is to check if the number is odd ore even
  modulo2 = number2 % idx  #this will be compared with each other. Each loop uses a certain value given by idx. 
  
  
    if (modulo1 == 0) && (modulo2 == 0) #if both numbers have no remainders for the current idx used to divide them with
      gcf = idx #That current idx becomes the gcf..
    end
      if gcf >= idx#.. until the next idx in the next round within the loop has a greater value than it.
        gcf = idx #If the next idx divides both numbers evenly, that shall take the place of gcf
      end
    idx = idx + 1 #idx increases to see if it is the next gcf to be divided with the two numbers perfectly.
  end
      return gcf
      
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
