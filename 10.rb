def prime?(n)
  (2...n).each {|x| return false if n%x==0}
  true
end

sum = 2
x=3
while x < 2000000
  if prime? x 
    sum+=x
  end
  x+=2
end

puts sum