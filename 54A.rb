n,k=gets.split.map(&:to_i)
t=gets.split.map(&:to_i)
t.shift;
t.push(n+100)
back=0;ans=0
for i in 1..n
	if t[0]==i then
		back=i
		ans+=1
	elsif i-back>=k then
		back=i
		ans+=1
	end	
end
p ans
