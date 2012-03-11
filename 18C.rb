n=gets.to_i
a=gets.split.map(&:to_i)
sum=a.inject(0){|a,b| a+=b}
lsum=0
ans=0
(n-1).times{|i|
	lsum+=a[i]
	sum-=a[i]
	ans+=1 if lsum==sum
}
p ans
