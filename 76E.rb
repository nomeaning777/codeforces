def solve(x,n)
	sum=0
	ans=0
	x.each{|i| sum+=i}
	x.each{|i|
		ans+=(n-1)*i*i-(sum-i)*i
	}
	ans
end

n=gets.to_i
x=Array.new(n,0)
y=Array.new(n,0)
n.times{|i|
	input=gets.split.map(&:to_i)
	x[i]=input[0]
	y[i]=input[1]
}

p solve(x,n)+solve(y,n) 
	
