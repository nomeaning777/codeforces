a=gets.split[0]
zero=0
one=0
hatena=0
a.each_char{|i|
	if i=="1" then
		one+=1
	elsif i=="0" then
		zero+=1
	elsif i=="?" then
		hatena+=1
	end
}
minus=zero+hatena+one-2
ans=[0,0,0,0]
res=["00","01","10","11"]
for i in 0..hatena
	z=zero+i
	o=one+hatena-i
	if minus%2==1 then z+=1 end
		if z>o then
			ans[0]=1
		elsif z<o then
			ans[3]=1
		else 
			if a[minus+1]=="?" then
				if hatena-i>0 then ans[1]=1 end
				if i>0 then ans[2]=1 end
			elsif a[minus+1]=="1" then
				ans[1]=1
			else
				ans[2]=1
			end
		end
end
4.times{|i|
	if ans[i]>0 then
		puts res[i]
	end
}
