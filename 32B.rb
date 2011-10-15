a=gets.split[0]
now=0
ans=""
while now<a.length
	if a[now..(now+1)]=="--" then
		ans+="2"
		now+=2
	elsif a[now..(now+1)]=="-." then
		ans+="1"
		now+=2
	else
		ans+="0"
		now+=1
	end	

end
puts ans
