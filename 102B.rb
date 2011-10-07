#!/usr/local/bin/ruby19
ans=0
n=gets.split[0]
while n.length>1
	m=0
	n.each_byte{|c|
		m+=c-48
	}
	ans+=1
	n=m.to_s
end
puts ans
