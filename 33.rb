timer_start = Time.now
 
numerator_product, denominator_product = 1, 1
 
(10..98).each do |n|
  (n+1..99).each do |d|
    # Non-trivial check
    next if n % 10 == 0 && d & 10 == 0
 
    # See if opposite digits in numerator and denominator match
    if (n.to_s[0] == d.to_s[1] && n.to_s[1] < d.to_s[0])
      # Second digit of numerator over first digit of denominator
      fraction_as_float = Float(n.to_s[1]) / Float(d.to_s[0])
    elsif (n.to_s[1] == d.to_s[0] && n.to_s[0] < d.to_s[1])
      # First digit of numerator over second digit of denominator
      fraction_as_float = Float(n.to_s[0]) / Float(d.to_s[1])
    else
      next
    end
 
    # Do we get the same value if we cancel out like digits?
    if (Float(n) / Float(d) == fraction_as_float)
      numerator_product*=n
      denominator_product*=d
    end
  end
end
 
puts denominator_product / numerator_product
 
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"