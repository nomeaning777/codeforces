n,m = gets.split.map(&:to_i)
a = Hash.new
a.default = 0 
b = Hash.new
b.default = 0
c = Hash.new
c.default = 0
d = Hash.new
d.default = 0

n.times{
	tmp = gets.split.map(&:to_i)
	a[tmp[1]] += 1
	b[tmp] += 1
}
m.times{
	tmp = gets.split.map(&:to_i)
	c[tmp[1]] += 1
	d[tmp] += 1
}
u,v = 0,0

a.each{|x,y|
	u += [y, c[x]].min
}

b.each{|x,y|
	v += [y, d[x]].min
}

p u
p v

