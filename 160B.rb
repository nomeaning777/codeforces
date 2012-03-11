def solve(a,b)
	x=[]
	y=[]
	a.length.times do |i|
		x.push(a[i].to_i)
		y.push(b[i].to_i)
	end
	x.sort!
	y.sort!

	a.length.times do |i|
		return false if x[i]>=y[i]
	end
	return true
end

n=gets.to_i
a=gets.split[0]
x=a[0..n-1]
y=a[n..2*n-1]
if solve(x,y) || solve(y,x)
	puts "YES"
else
	puts "NO"
end

