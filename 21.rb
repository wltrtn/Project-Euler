
def d n
  sum = 0
  (1..n/2+1).each {|x|
    sum += x if n%x == 0   
  }
  sum
end
puts d 284
s = 0
(1..10000).each {|x|
  y = d(x)
  s += x if x!=y && d(d(x))==x 
}
puts s
