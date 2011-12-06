n=gets.to_i.abs
i=1
k=0
while k<n || (k-n)&1>0
	k+=i
	i+=1
end
#p k
puts i-1
