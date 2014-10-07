max = 9**5*6
sumz = 0
(2..max).each {|i|
  sum = i.to_s.chars.inject(0) {|s, char| s + char.to_i**5}
  sumz += i if sum == i
}

puts sumz
