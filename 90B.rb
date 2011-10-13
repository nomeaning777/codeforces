w=gets.to_i
m=[]
w.times{
	m.push(gets.split[0])
}
h=m[0].length
ans=""
w.times{|i|
	h.times{|j|
		ok=1
		w.times{|x|
			if i!=x && m[i][j]==m[x][j] then
				ok=0
				break
			end
		}
		h.times{|y|
			if j!=y && m[i][j]==m[i][y] then
				ok=0
				break
			end	
		}
		if ok==1 then
			ans+=m[i][j]
		end	
	}
}	
puts ans
