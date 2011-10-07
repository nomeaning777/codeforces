n=gets.split[0]
n=n.bytes.to_a
k=0
l=n.length
ans=0
(l-1).downto(0){|i|
	if i==0 && k==0 then
		ans+=1;k=1
	else
		if n[i]+k==49 then
			ans+=1
			k=1
		elsif n[i]+k==50 then
			k=1
		else
			k=0
		end
		ans+=1
	end	
}
ans+=k
puts ans-1

