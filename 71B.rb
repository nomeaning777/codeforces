input=gets.split.map(&:to_i)

n=input[0]
m=input[1]
t=input[2]


res=0
0.upto(n*m){|i|
	if i*100<=n*m*t then
		res=i
	end	
}
for i in 1..n
	if m<=res then
		printf "%d ",m
		res-=m
	else
		printf "%d ",res
		res-=res
	end
end
puts

