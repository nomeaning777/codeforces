str=gets.split[0]
n=str.length
ans=0
for i in 0..n-1
	for j in 1..n-i
		s=str[i,j]
		
		if str.index(s)!=str.rindex(s) then
			if ans<j then
				ans=j
			end	
		end
	end
end	
puts ans
