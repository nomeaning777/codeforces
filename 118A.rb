data=gets.split[0]
data=data.downcase
data=data.gsub("a","")
data=data.gsub("o","")
data=data.gsub("y","")
data=data.gsub("e","")
data=data.gsub("u","")
data=data.gsub("i","")
0.upto(data.length-1){|i|
	print "."+data[i]
}
puts
