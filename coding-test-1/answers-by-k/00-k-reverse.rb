# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

#--------------------------------Solution 1----------------------
def reverse(string)
  
  reversed_string = ""
  
  index = string.length - 1
  
  while index >=0
    reversed_string.concat(string[index])
    index = index - 1
  end
  
  puts reversed_string
  return reversed_string 
    
end


# -------------------------- Solution 2 ---------------------------

# def reverse(string)
#   reversed_string = ""
#   idx = 0

#   # An if is not a loop 
#   # Use a while 
  
#   until idx == string.length
    
#     reversed_string =  string[idx].to_s + reversed_string
  
#     idx = idx + 1
#   end
  
#   return reversed_string
# end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
