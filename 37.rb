require 'mathn'
sum = 0
count = 0
def truncprime?(n)
  (0..n.to_s.length-1).each {|i|
    return false if !n.to_s[0..i].to_i.prime? || !n.to_s[i..-1].to_i.prime? 
  }
  true
end

Prime.each {|x|
  next if x<10
  break if count == 11

  if truncprime?(x)
    sum += x
    puts x
    count += 1
  end
   
}
puts sum

=begin
puts (10..1000000).select { |i|
  (0..i.to_s.length-1).all? { |j|
    i.to_s[0..j].to_i.prime? && i.to_s[j..-1].to_i.prime?
  }
}.reduce(:+)
=end