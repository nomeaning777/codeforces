input=gets.split[0].bytes.to_a
n=input.length
d=0
k=0
n.times{|i|
	if input[i]==40 then
		d+=1
	else
		if d<=0 then 
			k+=1
		else
		 	d-=1
		end	
	end
}
puts n-d-k
