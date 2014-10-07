

def score(name)
  name.bytes.map {|x| x-64}.reduce(:+)
end

text = File.open("names.txt","r").gets
names = text.gsub!('"','').split(',').sort
puts names.map.with_index {|name,index| score(name)*(index+1)}.reduce(:+)

