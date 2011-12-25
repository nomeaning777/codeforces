n,l=gets.split.map(&:to_i)
res=[]
a=gets.split.map(&:to_i)
l.upto(100){|k|
	ans=0
	a.each{|b|
		ans+=b/k
	}
	res.push(ans*k)
}
p res.max
