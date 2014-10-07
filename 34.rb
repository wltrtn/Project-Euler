result = 0
def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

(10..2540161).each do |x|
  sum = 0
  num = x
  while num > 0
    d = num%10
    num /= 10
    sum += (1..d).inject(:*) || 1
  end
  
  result += x if sum == x
end

puts result