q=gets.to_i
cnt=0
res=1
i=2
t=q
while i*i<=q
	tc=0
	while t%i==0
		t/=i
		tc+=1
		cnt+=1
		if cnt<=2 then
			res*=i
		end
	end
	i+=1
end
cnt+=1 unless t==1
if q==1 || cnt==1 then
	puts "1\n0"
elsif cnt==2 then	
	puts "2"
else
	puts "1\n#{res}"
end
