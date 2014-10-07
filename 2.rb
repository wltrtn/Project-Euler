val1 = 1
val2 = 2
val3 = 3
sum = 2
while val1+val2<4000000
  val3 = val1+val2
  if val3%2 == 0
    sum += val3
  end
  val1 = val2
  val2 = val3
end

puts sum