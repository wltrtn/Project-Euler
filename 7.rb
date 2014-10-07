
def prime?(n)
  (2...n).each {|x| return false if n%x==0}
  true
end

counter = 2
x=3
while counter <= 10001
  if prime? x 
    counter+=1
  end
  x+=2
end

puts x-=2