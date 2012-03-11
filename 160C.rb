n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

a.sort!
k-=1
input=[]
n.times{|i|
	if i>0&&a[i]==a[i-1]
		input[input.length-1][1]+=1
	else
		input.push([a[i],1])
	end
}
input.each{|t|
	if k<t[1]*n
		p t[0]
		p a[k/t[1]]
		exit
	else
		k-=n*t[1]
	end
}
