n=gets.to_i
a=gets.split.map(&:to_i).sort
b,c=[],[]
a.each{|k|
	if k%2==0  then
		b.push(k)
	else
		c.push(k)
	end
}
init=1
if c.length==0 then
	puts 0
	exit
end
ans=0
if c.length%2==0 then
	for i in 1..(c.length-1)
		ans+=c[i]
	end
else
	for i in 0..(c.length-1)
		ans+=c[i]
	end
end
b.each{|k| ans+=k}
p ans
