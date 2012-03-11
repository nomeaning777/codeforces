n,a,b=gets.split.map(&:to_i)
result=Array.new(n,1)
if a+1==n && a>0 then
	puts -1
	exit
end
b.times{|i|
	sum=0
	(i+1).times{|j|
		sum+=result[j]
	}
	result[i+1]=sum+1
}
result[0]=2 if b==0
result[1]=1 if b==0
start=b
if b>0 then
	a.times{
		result[start+1]=result[start]+1
		start+=1
	}
else
	start=1
	result[1]=2
	a.times{
		result[start+1]=result[start]+1
		start+=1
	}
	result[1]=1
end
if result[start-1]>50000 then
	puts -1
	exit
end
n.times{|i| p result[i]}
