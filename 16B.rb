n,m=gets.split.map(&:to_i)
cnt=Array.new(11,0)
m.times{
	a,b=gets.split.map(&:to_i)
	cnt[b]+=a
}
ans=0
10.downto(1){|i|
	if(n>=cnt[i]) then
		n-=cnt[i]
		ans+=cnt[i]*i
	else
		ans+=n*i
		n=0
	end
}
p ans
