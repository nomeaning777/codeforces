n,a,b=gets.split.map(&:to_i)
ans=0
for i in 1..n
	if i-1>=a then
		if n-i<=b then
			ans+=1
		end
	end
end
p ans
