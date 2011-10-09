
input=gets.split.map(&:to_i)

$n1=input[0]
$n2=input[1]
$k1=input[2]+1
$k2=input[3]+1
$dp=Array.new(101){Array.new(101){Array.new(20){Array.new(3,-1)}}}
def solve(c1,c2,s,t)
	
	if c1>$n1 || c2>$n2 then 
		return 0
	end	
	if c1==$n1 && c2==$n2 then 
		return 1
	end
	if $dp[c1][c2][s][t]>=0 then
		return $dp[c1][c2][s][t]
	end	
	#1を置く
	ans=0
	if t==0 then
		if s+1<$k1 then
			ans+=solve(c1+1,c2,s+1,t)
		end
	else
		ans+=solve(c1+1,c2,1,0)
	end
	
	#2を置く
	if t==1 then
		if s+1<$k2 then
			ans+=solve(c1,c2+1,s+1,t)
		end
	else
		ans+=solve(c1,c2+1,1,1)
	end
	ans%=100000000
	$dp[c1][c2][s][t]=ans
	return ans
end

p solve(0,0,0,0)
