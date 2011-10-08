def and_(x,y_)
	b=0
	res=[]
	y=y_+[9999999999]
	x.length.times{|a|
		while x[a]>y[b]
			b+=1
		end
		if x[a]==y[b] then
			res.push(x[a])
		end	
	}
	return res
end

sets=[]
n=gets.to_i
(n*(n-1)/2).times{
	k=gets.split.map(&:to_i)
	k.shift
	k.sort!
	sets.push(k)

}
if n==2 then
	printf "1 %d\n",sets[0][0]
	printf "%d ",sets[0].length-1
	1.upto(sets[0].length-1){|i|
		printf "%d ",sets[0][i]
	}
	puts
	exit
end	
ans={}
loop do
	i=rand(sets.length)
	j=rand(sets.length)
	if i==j then
		next
	end	
	t=and_(sets[i],sets[j])
		
		if t.length==0 then
			next
		end
		ans[t]=1
	
	if ans.length==n then
		break
	end
end
ans=ans.keys
ans.each{|a|
	printf "%d ",a.length
	a.each{|x|
		printf "%d ",x
	}
	puts
}
