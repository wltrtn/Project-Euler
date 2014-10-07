num = 600851475143

def isPrime?(n)
  (2...n).each {|x| return false if n%x==0}
  true
end

a = []
product = 1
x = 2
while product<num
  if num%x == 0 && isPrime?(x)
    a << x
    product *= x
  end
  x+=1
end

puts a.last
