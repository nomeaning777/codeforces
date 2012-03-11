def mask(a)
	res=""
	while a>0
		res="4"+res if a%10==4 
		res="7"+res if a%10==7
		a/=10
	end
	return res
end
a,b=gets.split
a=a.to_i+1
loop {
	if mask(a)==b then
		puts a
		exit
	end
	a+=1
}
