input=gets.split.map(&:to_i)
ans=[]
4.times{|a|
	4.times{|b|
		4.times{|c|
			if a==b ||b==c || c==a then			
				next
			end
			k1=input[a]
			k2=input[b]
			k3=input[c]
			if k1==k2+k3 then
				ans.push(1)
			elsif k1>=k2&&k2>=k3 then
				if k1<k2+k3 then
					ans.push(2)
				end	
			end
		}
	}
}	
if ans.length==0 then
	puts  "IMPOSSIBLE"
elsif ans.max==2 then
	puts "TRIANGLE"
else
	puts "SEGMENT"
end	
