n=gets.to_i
computer=Struct.new("Computer",:cpu,:ram,:hdd,:cost)
c=[]
for i in 1..n
	input=gets.split.map(&:to_i)
	c.push(computer.new(input[0],input[1],input[2],input[3]))
end
u=Array.new(n,0)
for i in 0..n-1
	for j in 0..n-1
		if c[i].cpu<c[j].cpu && c[i].ram < c[j].ram && c[i].hdd < c[j].hdd then
			u[i]=1
		end
	end
end	
mincost = 999999999
for i in 0..n-1
	if u[i]==0 then
		if mincost>c[i].cost then
			mincost=c[i].cost
			res=i+1
		end
	end
end
puts res
