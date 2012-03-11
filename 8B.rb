input=gets.split[0]
dx={"L"=>-1,"R"=>1,"U"=>0,"D"=>0}
dy={"L"=>0,"R"=>0,"U"=>-1,"D"=>1}
d=["L","R","D","U"]
x=y=0
access=Hash.new
input.length.times{|i|
	access[[x,y]]=1
	x+=dx[input[i]]
	y+=dy[input[i]]
}
access[[x,y]]=1
mincost=Hash.new
mincost.default=999999999
queue=Array.new
queue.push([0,0])
mincost[[0,0]]=0
while queue.size()>0
	now=queue.shift
	nowcost=mincost[now]
	for k in 0..3
		next_state=[now[0]+dx[d[k]],now[1]+dy[d[k]]]
		next unless access.key?(next_state)
		if mincost[next_state]>nowcost+1 then
			mincost[next_state]=nowcost+1
			queue.push(next_state)
		end
	end
end
if mincost[[x,y]]==input.length then
	puts "OK"
else
	puts "BUG"
end

