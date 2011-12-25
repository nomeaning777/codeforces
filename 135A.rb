n=gets.to_i
a=gets.split.map(&:to_i)
a.sort!
b=1
f=false
a.each{|i|
	if i!=1 then
		f=true
	end
}
cnt=0
a.each{|i|
	r=i
	if i!=b then
		r=b
	end
	if cnt==n-1 && f==false then
		r=2
	end
	print r
	print " "
	b=i
	cnt+=1
}
