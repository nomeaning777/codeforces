n,k=gets.split.map(&:to_i)
point=[]
for i in 1..n
	point.push(gets.split.map(&:to_i))
end
res=0.0
for i in 1..n-1
	res+=Math::sqrt((point[i-1][0]-point[i][0])**2+(point[i-1][1]-point[i][1])**2)
end
p res/50*k
