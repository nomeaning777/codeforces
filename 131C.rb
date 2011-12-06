n,m,t=gets.split.map(&:to_i)
def fact(i)
	if i<=1 then return 1 end
	return i*fact(i-1)
end
def comb(n,k)
	return fact(n)/fact(k)/fact(n-k)
end
ans=0
for d in 4..n
	j=t-d
	if j==0 then next end
	ans+=comb(n,d)*comb(m,j)
end
p ans
