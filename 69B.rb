n,m=gets.split.map(&:to_i)
comp=[]
time=Array.new(n){[9999999,0]}
m.times{
	l,r,t,c=gets.split.map(&:to_i)
	for k in (l-1)..(r-1)
		if time[k][0]>t then
			time[k][0]=t
			time[k][1]=c
		end
	end
}
ans=0
n.times{|i|	
	ans+=time[i][1]
}
p ans
