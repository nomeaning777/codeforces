n,m,r=gets.split()
r=r[0]
n=n.to_i
m=m.to_i

map=Array.new(n)
for i in 0..n-1
	map[i]=gets.split[0]
end

res=[]
dx=[1,0,-1,0]
for i in 0..n-1
	for j in 0..m-1
		next if map[i][j]!=r
		for k in 0..3
			nx=i+dx[k]
			ny=j+dx[k^1]
			if nx>=0&&nx<n&&ny>=0&&ny<m then
				res.push(map[nx][ny]) unless map[nx][ny]==r
			end
		end
	end
end
ans=0

for i in 0..res.length-1
	ok=1
	for j in 0..i-1
		ok=0 if res[i]==res[j]
	end
	next if ok==0||res[i]=="."
	ans+=1
end

p ans

