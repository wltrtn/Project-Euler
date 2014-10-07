def sumdigits n
  n.to_s.split("").map(&:to_i).reduce(:+)
end

num = 1 
puts sumdigits((1..100).reduce(:*))
