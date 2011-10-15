input=gets.split.map(&:to_i)
n=input[0]
p1=input[1]
p2=input[2]
p3=input[3]
t1=input[4]
t2=input[5]

back=-1
ans=0
n.times{|i|
	input=gets.split.map(&:to_i)
	if back==-1 then
		back=input[0]
	end	
	ans+=(input[1]-input[0])*p1
	t=input[0]-back
	t1.times{
		if t==0 then
			break
		end
		t-=1
		ans+=p1
	}
	t2.times{
		if t==0 then
			break
		end
		t-=1
		ans+=p2
	}
	ans+=t*p3
	back=input[1]
}
puts ans
