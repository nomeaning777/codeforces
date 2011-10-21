def solve(x)
	if $p[x]<0 then 
		return 0
	end
	if $dp[x]>=0 then
		return $dp[x]
	end
	return $dp[x]=solve($p[x])+1
end
n=gets.to_i
$p=[]
n.times{|i|
	$p.push(gets.to_i-1)
}
$dp=Array.new(n,-1)
ans=0
n.times{|i|
	ans=[ans,solve(i)].max
}
p ans+1
