a,b=gets.split.map(&:to_i)
a=a.to_s(3)
b=b.to_s(3)
a="0"*(500-a.length)+a
b="0"*(500-b.length)+b
r=""
500.times{|i|
	r+=((-a[i].to_i+b[i].to_i+3)%3).to_s
}
p r.to_i(3)
