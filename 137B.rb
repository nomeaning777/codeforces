n=gets.to_i
a=gets.split.map(&:to_i)
cnt=Array.new(n+1,0)
a.each{|i|
	if i<=n then
		cnt[i]=1
	end
}
ans=n
1.upto(n+1){|i|
	if cnt[i]==1 then
		ans-=1
	end
}
p ans
