def solve(n,k)
	big=n;small=k
	a=0
	while big!=1||small!=1
		t=big/small
		if big%small==0 then t-=1 end
		a+=t
		big-=t*small
		if big<small then
			big,small=small,big
		end
	end
	a
end
# 最後の数字を家庭する
n=gets.to_i
ans=99999999

for i in 1..(n+1)/2
	if n.gcd(i)!=1 then next end
	ans=[ans,solve(n,i)].min	
	#p [n,i,solve(n,i)]
end
p ans

