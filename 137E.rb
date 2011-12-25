def fact(i)
	if i<=1 then return 1 end
	return i*fact(i-1)
end
def comb(n,k)
	return fact(n)/fact(k)/fact(n-k)
end
v=0
c=0
str=gets.split[0].downcase
str.each_char{|a|
	if a=="a"||a=="i"||a=="u"||a=="e"||a=="o" then
		v+=1
	else
		c+=1
	end
}
ans=c+[2*c,v].min
if ans==0 then
	puts "No solution"
else
	count=0
	usev=[2*c,v].min
	puts "#{ans} #{comb(v,usev)}"
end
