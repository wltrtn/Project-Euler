numbers = []
(2..100).each do |a|
  (2..100).each do |b|
    numbers << a**b if !numbers.include?(a**b)
  end
end

puts numbers.size
