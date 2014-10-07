timer_start = Time.now
 
require 'mathn'
 
def circular_prime?(i)
  nums = i.to_s.chars.to_a
 
  nums.length.times do
    return false if (!nums.join().to_i.prime?)
    # "pop" digit off the front and rotate to the end
    nums.push nums[0]
    nums.shift
  end
 
  return true
end
 
answer = 0
Prime.each { |x|
  break if x >= 1_000_000
  answer += 1 if circular_prime?(x)
}
 
puts answer
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
