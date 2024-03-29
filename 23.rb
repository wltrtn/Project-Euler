#A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

#A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

#As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

#Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

def abundant? n
  sum = 1
  (2..Math.sqrt(n)).each {|x|
    if n%x == 0  
      sum += n/x if x != Math.sqrt(n)
      sum += x
    end
  }
  sum > n
end


abun = []
(12..28123).each do |x|
  abun << x if abundant? x
end
puts abun.size

sums = []

(0..abun.size-1).each do |i|
  (i..abun.size-1).each do |j|
    break if 28123 < abun[i] + abun[j]
    sums << abun[i] + abun[j]
  end
end

num = [*1..28122]
num = num - sums

puts num.reduce(:+)
