n=gets.to_i
a=gets.split.map(&:to_i)

ans=0
n.times{|i|
	ans+=a[i]*(1+i)
	ans-=i
}
p ans
