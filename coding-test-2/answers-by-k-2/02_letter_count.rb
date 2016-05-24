
#No failures! :)

def letter_count(str)
  counts = Hash.new(0)

  str.each_char do |char|
      count = str.count(char)
      counts[char] = count unless char == " "
  end
  counts
end


#1 error when each_char is substituted with a while loop. BUT WHY?

# def letter_count(str)
#   counts = Hash.new(0)
#   idx = 0
#   while idx < str.length
#     count = str.count(str[idx])
#     counts[str[idx]] = count unless str[idx] == " "
#     idx +=1 
#   end
#   counts
# end



