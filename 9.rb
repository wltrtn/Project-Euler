require 'mathn'
a = 0
(1...998).each {|b|
  a = (500000-1000*b)/(1000-b)  
  if a.is_a? Integer
    break
  end
}

puts a


