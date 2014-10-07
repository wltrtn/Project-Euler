max = 0
result = 0
(2..1000).step(2) do |p|
  num = 0
  (2...p/3).each do |a|
    num += 1 if p*(p-2*a)%(2*(p-a)) == 0
    if num>max
      max = num
      result = p
    end
  end
  
end
puts result
puts max