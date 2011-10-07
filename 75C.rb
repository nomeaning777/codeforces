def search(x,res)
	lb=-1
	ub=res.length
	while ub-lb>1
		mid=(ub+lb)>>1
		if res[mid]<=x then
			lb=mid
		else
			ub=mid
		end	
	end
	return ub
end

input=gets.split.map(&:to_i)
a=input.min
b=input.max

res=[]
for i in 1..a
	if i*i>a then
		break
	end
	if a%i ==0 then
		if b%i==0 then
			res.push(i)
		end	
	end
end	
for i in 1..a
	if i*i>=a then
		break
	end
	if a%i ==0 then
		if b%(a/i)==0 then
			res.push(a/i)
		end	
	end
end	
res.sort!

#p res
#p search(2,res)
q=gets.to_i
(1..q).each{
	input=gets.split.map(&:to_i)
	x=res[search(input[1],res)-1]
	if x>=input[0] then
		puts x
	else
		puts -1
	end	
}
