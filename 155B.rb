n=gets.to_i
s=[]
ans=0
cnt=1
n.times{
	a,b=gets.split.map(&:to_i)
	
	s.push(a) if b==0
	cnt+=b
	if b!=0 then
		cnt-=1
		ans+=a
	end
}
s.sort!
s.reverse!
[cnt,s.size()].min.times{|i|
	ans+=s[i]
}
p ans
