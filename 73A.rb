m=[0,0,0]
m[0],m[1],m[2],k=gets.split.map(&:to_i)
ans=[1,1,1]
t=0
tk=k*3
tmp=0
loop {
	break unless k>0
	break unless tk>t
	if ans[t%3]<m[t%3] then
		tmp=0
		k-=1
		ans[t%3]+=1
	else
		tmp+=1
	end
	if tmp>4 then break end
	t+=1
}
p ans[0]*ans[1]*ans[2]
