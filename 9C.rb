n=gets.to_i
ans=0
(1<<12).times{|i|
	v=0
	for j in 0..11
		v*=10
		if ((i>>j)&1)==1 then
			v+=1
		end	
	end
	if v<=n then
		ans+=1
	end	
}
p ans-1

