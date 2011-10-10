input=gets.split.map(&:to_i)
n=input[0]
m=input[1]-1
n.times{
	input=gets.split.map(&:to_i)
	s=input[0]-1
	f=input[1]-1
	t=input[2]
	if s==f then
		puts t 
	elsif s<f then
		#登り
		tt=t%(2*m)
		cnt=t/(2*m)
		if tt>s then
			cnt+=1
		end
		puts cnt*2*m+f
	else
		tt=t%(2*m)
		cnt=t/(2*m)
		s,f=f,s
		if tt>m-f+m then
			cnt+=1
		end
		puts cnt*2*m+m+m-s
	end
}
