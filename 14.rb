def apply n
  return n/2 if n%2==0
  return 3*n+1 if n%2==1
end

def func x
  a = []
  while x != 1
    a << x
    x = apply x 
  end
  return a.length + 1
end

max = 0
(1...1000000).each do |x|
  max = func(x) if func(x) > max
end

puts max
