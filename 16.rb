def sumdigits n
  n.to_s.split("").map(&:to_i).reduce(:+)
end

puts sumdigits 2**1000