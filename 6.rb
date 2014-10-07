sum = 0
sum2 = 0
(1..100).each {|x| sum+= x**2; sum2+=x}

sum2*=sum2
puts sum2 - sum

