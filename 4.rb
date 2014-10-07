puts 999*999

n = 998001

def isDivisible(n)
  (100..999).each {|x| return true if n%x==0 && (n/x).to_s.length == 3}
  false
end

998001.downto(10000) {|x|
  a = x.to_s
  if a[0]==a[-1] && a[1] == a[-2] && a[2]==a[-3] &&isDivisible(x)
    puts a
    break
  end
}

