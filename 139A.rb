n=gets.to_i
d=gets.split.map(&:to_i)
t=0
loop {
	n-=d[t%7]
	if n<=0 then
		puts t%7+1
		exit
	end
	t+=1
}
