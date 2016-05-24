# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.
#
# Difficulty: easy.



def factorial(n)
  
  product = 1 #------do i realy need this part even if my condition says "if n > 0"?
  
  return nil if n < 0
  
  while n > 0
   product = product * n
   n = n - 1
  end

  return product 
  
end


# Try out recursion if you can 

# def factorial(n)

#   # First look for a base case, the minimum condition
#   # Call the same method that you are defining
#   # Which will call the base case
#   # Then check for that condition
#   # And repeat loop
#   # Eg factorial(2)

#   if n == 0
#     return 1
#   else
#     n * factorial(n-1)
#     2 * factorial(1)
#     2 * 1 * factorial(0)
#     2 * 1 * 1
#   end
# end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'factorial(0) == 1: ' + (factorial(0) == 1).to_s
)
puts(
  'factorial(1) == 1: ' + (factorial(1) == 1).to_s
)
puts(
  'factorial(2) == 2: ' + (factorial(2) == 2).to_s
)
puts(
  'factorial(3) == 6: ' + (factorial(3) == 6).to_s
)
puts(
  'factorial(4) == 24: ' + (factorial(4) == 24).to_s
)
