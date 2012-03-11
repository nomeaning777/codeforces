n=gets.to_i
a=gets.split.map(&:to_i)
t=Hash.new()
t.default=0
a.each{|q| t[q]+=1 }
a.sort!
now,count=a[0],1
while count<n
	t[now]-=1
	#上があるなら使う
	if t[now+1]>0
		now+=1
	elsif t[now-1]>0
		now-=1
	else
		puts "NO"
		exit
	end
	count+=1
end
if (a[0]-now).abs==1	
	puts "YES"
else
	puts "NO"
end
