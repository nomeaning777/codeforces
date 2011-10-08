n=gets.to_i
i=gets.split.map(&:to_i)
i.sort!
m=i[0]
ans="NO"
i.each{|j|
	if j>m then
		ans=j.to_s
		break
	end	
}

puts ans
