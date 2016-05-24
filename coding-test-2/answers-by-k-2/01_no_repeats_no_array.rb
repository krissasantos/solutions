#PROCEED TO VERSION 2 

# I(2) - year_start, year_end

# P     Tried to skip making a set and instead used the year_start value as itself and incremented it til year_end
#       
#       For each year, see if any of the digits repeat.
#       if they don't, add to the no_repeat array
#       Count method: if all digit counts are == 1, push that year into the year_no_repeat set
#       or while method with the condition if digit count == 1, 
#       (increment idx to scan the string 'year')
#       incrememnt year til == year_end
     

# O     year_no_repeat set

def no_repeats(year_start, year_end)
  

  idx = 0
  no_repeat = []
  
  while year_start <= year_end

    year_s = year_start.to_s
    count = year_s.count(year_s[idx])
      if count == 1
        no_repeat << year_start
      end
      year_start+=1
      idx +=1
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


  