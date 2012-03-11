n,m,k=gets.split.map(&:to_i)
ans=0
MOD=1000000007
if k==1 || k>n then
	ans=1
	n.times{ ans=(ans*m)%MOD}
	p ans
elsif k==n
	t=(k+1)/2
	ans=1
	t.times{ans=ans*m%MOD}
	p ans
elsif k % 2==0 then
	p m
elsif k % 2==1
	p m*m
end
