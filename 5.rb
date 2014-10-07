x=20
def divisible?(n)
  20.downto(2) {|x| return false if n%x != 0}
  true
end

while(true)
  if divisible?(x)
    puts x
    break
  end
  x+=20
end
  


