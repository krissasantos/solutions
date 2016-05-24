
# I - num (integer) to be tested if it's a power of 2 or not.
# P - Keep dividing the input til it reaches one. This proves it is a power of 2. 
#     The deciding factor is when that num > 1 reaches the lowest value 1 when divided by 2 repeatedly.
# O - Return True or False

# Constraints:

# Anything > 1 are possible powers of 2.
# Anything BELOW 1 are invalid.
# The deciding factor is when that num > 1 reaches the lowest value 1 when divided by 2 repeatedly.


# What is power of 2?
#     It is the integer that acts as an exponent of the base number 2. This number when divided by 2 over and over 
#     will reach  the lowest value of a power of 2 which is 1.
    
#     Anything >1 is invalid. 
#     Only 1 and up are possible.
    
def is_power_of_two?(num)
    
    if num < 1
        return false
    end
    
    while true 
        if num == 1
            return true
        elsif num % 2 == 0
            num = num / 2 
        else
            return false  
        end
    end
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)
Status API Training Shop Blog About
