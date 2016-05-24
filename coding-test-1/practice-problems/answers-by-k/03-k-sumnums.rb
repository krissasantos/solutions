# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
#
# # Difficulty: easy.
# Steps:
# 1. Made 2 integer variables 'sum' and 'idx' both with a value of 0.
# 2. Made a condition that until the idx matches the value of num, the loop stops.
# 3. The loop is composed of the sum adding up in increments of 1 til the idx reaches or matches the value of num
# 4. Return sum


def sum_nums(num)
    sum = 0
    idx = 0
   while idx <= num
        
            sum = sum + idx 
           
           idx = idx + 1
    end 
     
    # inject() do |sum, idx| sum + idx end 
    return sum
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('sum_nums(1) == 1: ' + (sum_nums(1) == 1).to_s)
puts('sum_nums(2) == 3: ' + (sum_nums(2) == 3).to_s)
puts('sum_nums(3) == 6: ' + (sum_nums(3) == 6).to_s)
puts('sum_nums(4) == 10: ' + (sum_nums(4) == 10).to_s)
puts('sum_nums(5) == 15: ' + (sum_nums(5) == 15).to_s)
