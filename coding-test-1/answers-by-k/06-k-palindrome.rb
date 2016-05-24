# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.
#Solution 1

# Steps:
# 1. used reverse method for the string input: string.reverse and assigned it to the 'reversed' variable.
# 2. made an if statement that if the variable reversed containing the reversed string is the same with the string input itself
# then it is a palindrome. The code must return true. If not, false.

def palindrome?(string)
  
  if string == string.reverse
    true
  end
end


# Solution 2 (No reverse method)
# Steps:

# 1. Reversed the string without using the reverse method.
# 2. I assigned "reversed" as a string variable starting off empty.
# 3. The "reversed" variable will contain the reverse of the string with this equation inside the while loop: 
#     reversed = "" + string[idx]
# 4. For the entire while loop, it gets each character of the string and puts it in 


# # def palindrome?(string)
# # idx = 0
# # reversed = ""


# #     while idx < string.length
# #         reversed = reversed + string[idx]
# #     end

# #     reversed == string ? return true

# #     else return false
# # end






# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
