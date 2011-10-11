n=gets.to_i
g=Array.new(n){[]}
n.times{
	input=gets.split.map(&:to_i)
	a=input[0]-1
	b=input[1]-1
	c=input[2]
	g[a].push([a,b,c])
	g[b].push([a,b,c])
}
res=[]
for q in 0..1
	cost=0
	v=g[0][q][1]
	if v==0 then
		cost+=g[0][q][2]
		v=g[0][q][0]
	end
	back=g[0][q]
	loop do
		if v==0 then
			break
		end
		for i in 0..1
			if g[v][i]!=back then
				back=g[v][i]
				if g[v][i][1]==v then
					cost+=g[v][i][2]
					v=g[v][i][0]
				else
					v=g[v][i][1]
				end	
				break
			end
		end
	end
	res.push(cost)
end	
puts res.min
