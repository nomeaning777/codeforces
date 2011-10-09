d=gets.split[1].to_i
a=gets.split.map(&:to_i)
ans=0
1.upto(a.length-1){|i|
	r=a[i-1]-a[i]+1
	if r>0 then
		ans+=(r+d-1)/d
		a[i]+=(r+d-1)/d*d
	end	
}
puts ans
