# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

# Steps: 
# 1. I split the code intp 3 parts: a while loop, and if and else conidtion
# 2. The while loop's condition is that while the value of minutes is greater than or equal to 60, 
#   the numberof hours will increase, while the number of minutes will be deducted by 60 in each turn. This tallies 
#   the number of hours and the minutes LEFT that do not total to an hour.
   
#   3. For the minutes LEFT that do not total to an hour, there are two possibilities: minutes having 2 digits or one. I translated these in code
#   by having an if else statement.:
#         
#         if minutes is less than 10, this means it shows the digit with a zero before it, (like how the clock presents time)
#         the string  for minutes will look like this: minutes.to_s + "mins". No changes.
#         (example: 10: 09, 11:01)
        
#         Otherwise, 
#         the minutes with one digit will be 
#         minutes_string = '0' + minutes.to_s + "mins"
        
# 4. the last step will be to join both string variables, hours and minutes_string
# 5. return hours + ':' minutes_s 

def time_conversion(minutes)
    hours = 0

    while  minutes >= 60
        hours = hours + 1
        minutes = minutes - 60
    end        
     
    if minutes < 10
         minutes_string = "0" + minutes.to_s 
    else 
        minutes_string = minutes.to_s
    end
    
    return hours.to_s + ":" + minutes_string
    
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
