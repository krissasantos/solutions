# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
#
# Difficulty: easy.

def sum_nums(num)
    
    (0..5).inject() { |element, element_2| element - element_2}
  
end


puts(sum_nums(5))
