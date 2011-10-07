luckynumbers=[]
for i in 1..12
	for j in 0..((1<<i)-1)
		l=""
		a=0;b=0;
		for k in 0..(i-1)
			if ((j>>k)&1)==1 then
				l+="4"
				a+=1
			else
				l+="7"
				b+=1
			end		
		end
		#puts l
		if(a==b) then
			luckynumbers.push(l.to_i)	
		end
	end
end	
luckynumbers.sort!
#p luckynumbers
n=gets.to_i
luckynumbers.each{|t|
	if(t>=n) then
		puts t
		break
	end	
}



