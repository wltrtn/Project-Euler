fib = [1,1,2]
x = 3
i = 3
while (x.to_s.length!=1000)
  x = fib[-1] + fib[-2]
  fib << x
  i += 1
end

puts i

