length = 0

1000.downto(1).each {|i|
  break if length >= i
  rem = [0,0,0,0,0,0,0,0,0,0]
  value = 1
  position = 0
  
  while rem[value] == 0 && value != 0
    rem[value] = position
  end
 
  
}



#puts (0..1000).map { |d| 
#  (1..d).detect(lambda{0}) { |t| (10**t % d) == 1 } 
#}.each_with_index.max[1]

