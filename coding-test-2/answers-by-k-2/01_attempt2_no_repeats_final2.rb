# I(2) - year_start, year_end
# P    - Create a set for the range of year_start til year_end
    #     - For each year, see if any of the digits repeat.
    #     - if they don't, add to the no_repeat array
#      - count method: if all digit counts are == 1, push that year into the year_no_repeat set(year_no_repeat=[]).
#      - or while method with the conidtion if digit count == 1, 
#       (increment idx to scan the string 'year')
#      - incrememnt year til == year_end
# O    - year_no_repeat set

def no_repeats(year_start, year_end)
    arr = []
    (year_start..year_end).each do |year|
        arr << year 
    end
    
    idx = 0
    no_repeat = []
    while idx < arr.length #replace with each method.. arr.each do 
        year = arr[idx]
        idx2 = 0
        while idx2 < year.length
            (1..9).all?{|digit| year.count(digit) <= 1}
                if true
                    no_repeat << year
                end
            idx2+=1
        end
        idx1+=1
    end
    return no_repeat
end
