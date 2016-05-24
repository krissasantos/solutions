# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

#created a set to store all prime numbers
#current_value is 2 since 2 is the first prime number
#I was about to use n instead of idx to get the value of the nth prime. but it showed all false.
#idx gets the posiiton of the last element inside the prime set. 
  #idx will give the value of the nth prime 

def nth_prime(n)
  prime = [] 
  current_value = 1 
  i = 1     
        
  while i < 3*n 
    if is_prime?(current_value)
      prime << current_value 
    end
    current_value = current_value + 1 
     i += 1
  end
 
            
  prime[n-1]#I was about to use n instead of idx to get the value of the nth prime. but it showed all false. => prime[n]
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
