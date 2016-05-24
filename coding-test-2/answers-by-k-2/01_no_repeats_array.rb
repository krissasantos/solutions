#PROCEED TO VERSION 2 

# I(2) - year_start, year_end

# P     Create a set for the range of year_start til year_end
#       For each year, see if any of the digits repeat.
#       if they don't, add to the no_repeat array
#       Count method: if all digit counts are == 1, push that year into the year_no_repeat set
#       or while method with the condition if digit count == 1, 
#       (increment idx to scan the string 'year')
#       incrememnt year til == year_end
     

# O     year_no_repeat set

def no_repeats(year_start, year_end)
     # (year_start..year_end).inject(0) do { |x| x + 1 }
    arr = [] 
    arr << year_start
    while year_start < year_end
        year_start += 1
    end
    
    
    
    
    
    idx = 0
    no_repeat = []
    while idx < arr.length
    year = arr[idx]
            # while idx2 < year.length
        year_s = year.to_s
        count = year_s.count(year_s[idx])
            
        if count == 1    # if year.count { year[idx2] } == 1
            no_repeat << year 
        end
        idx+=1
    end
    
    return no_repeat
    puts no_repeat
end

    no_repeats(1234, 1234) #== [1234]
    no_repeats(1123, 1123) #== []
    no_repeats(1980, 1987) #== [
    #  1980,
    #  1982,
    #  1983,
    #  1984,
    #  1985,
    #  1986,
    #  1987
    #]
