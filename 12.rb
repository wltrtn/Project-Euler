
def triangle n
  sum = 0
  (1..n).each {|x| sum+=x}
  sum 
end

def divisors n
  num = 1
  (1..(n/2)).each {|x| num+=1 if n%x == 0}
  num
end

def factors(n)
  if ( n == 1 )
    return [1]
  end
  
  a = []
  i = 1
  max = n
  while (i < max)
    if ( n % i == 0 ) # i is a factor
      a.push(i)
      
      if ( i != n/i ) # if not square, get the quotient which is a factor as well
        a.push(n/i)
      end
      max = n/i
    end
    i += 1
  end
  
  return a.sort()
end

n = 0
while(true) do
  break if factors(triangle(n)).length > 500
  n+=1
end
 
puts triangle n
