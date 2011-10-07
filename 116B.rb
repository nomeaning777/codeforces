input=gets.split.map(&:to_i)
w=input[0];h=input[1]
map=[]
for i in 1..w
	m=gets
	t=[]
	for j in 0..h-1
		if m[j,1]=="P" then
			t.push(2)
		elsif m[j,1]=="W" then
			t.push(1)
		else
			t.push(0)
		end	
	end
	map.push(t)
end	

ans=0
d=[0,1,0,-1]
for x in 0..w-1
	for y in 0..h-1
		if map[x][y]==2 then
			for k in 0..3
				nx=x+d[k]
				ny=y+d[k^1]
				if nx>=0 && ny>=0&&nx<w&&ny<h then
					if map[nx][ny]==1 then
						ans+=1
						map[nx][ny]=0
						break
					end
				end
			end	
		end
	end
end	
puts ans
