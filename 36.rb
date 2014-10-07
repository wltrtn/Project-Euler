
def is_palindrone(n)
  array = n.to_s.split('')
  (0..array.size/2).each { |i|
    return false if array[i] != array[-1-i]
  }
  
  a2 = n.to_s(2).split('')
  (0..a2.size/2).each { |i|
    return false if a2[i] != a2[-1-i]
  }
  true
end
sum = 0
(1...1000000).each {|x|
  sum += x if is_palindrone(x)
}
puts sum
  