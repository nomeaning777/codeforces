data=[gets,gets,gets]
ans="YES"

3.times{|x|
	3.times{|y|
		if data[x][y]!=data[2-x][2-y] then
			ans="NO"
		end	
	}
}	
puts ans
