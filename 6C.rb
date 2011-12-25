n=STDIN.gets.to_i
t=STDIN.gets.split.map(&:to_i)
sum=[0]
t.each{|i|
	sum.push(sum[sum.length-1]+i)
}
sum+=[9999999999999]

rsum=[0]
t.reverse.each{|i|
	rsum.push(rsum[rsum.length-1]+i)
}
rsum+=[999999999999]
a1=a2=0
loop {
	t1=sum[0]
	t2=rsum[0]
	if t1<=t2 then
		sum.shift
		a1+=1
	else
		rsum.shift
		a2+=1
	end
	break if sum.size+rsum.size==n+2 
}
puts "#{a1-1} #{a2-1}"

