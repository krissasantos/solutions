# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.


def dasherize_number(num)

  index = 0
 
  num_string = num.to_s
  new_string = ''
 
  while index < num_string.length
   # Simplify your checks for odd and evenness here. 
   # You are checking for so many things which makes the code messy.
   # Just divide the number using modulo you don't need to check for index
    
    if num_string[index].to_i.even? 
      new_string += num_string[index].to_s 
    elsif num_string[index].to_i.odd? 
      new_string = "-" + num_string[index].to_s + "-"
    end
    
    index = index + 1
  end
    puts new_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

dasherize_number(233)
# puts(
#   'dasherize_number(203) == "20-3": ' +
#   (dasherize_number(203) == '20-3').to_s
# )
# puts(
#   'dasherize_number(303) == "3-0-3": ' +
#   (dasherize_number(303) == '3-0-3').to_s
# )
# puts(
#   'dasherize_number(333) == "3-3-3": ' +
#   (dasherize_number(333) == '3-3-3').to_s
# )
# puts(
#   'dasherize_number(3223) == "3-22-3": ' +
#   (dasherize_number(3223) == '3-22-3').to_s
# )
