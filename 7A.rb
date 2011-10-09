a=[]
8.times{
	a.push(gets.split[0])
}
res=0
8.times{|i|
	if a[i]=="BBBBBBBB" then
		res+=1
	end	
	ok=1
	8.times{|j|
		if a[j][i]!="B" then
			ok=0
		end	
	}
	res+=ok
}
res=res==16 ? 8 : res
puts res
