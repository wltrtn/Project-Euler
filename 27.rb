def isPrime?(n)
  (2...n).each {|x| return false if n%x==0}
  true
end

max = 0
amax = 0
bmax = 0
maxproduct = 0 

(-999...1000).each {|a|
  (-999...1000).each {|b|
    n = 0 
    while isPrime?((n**2 + a*n + b).abs)
      n+=1
    end
    
    if n > max 
      max = n
      amax = a
      bmax = b
    end
  }
}

puts amax*bmax