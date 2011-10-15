require 'set'
def check(x,t)
	ok=false
	$m.each{|h|
		if x+t<=h[0] || h[0]+h[1]<=x then
		else
			return false
		end	
	}
	return true 
end
n,t=gets.split.map(&:to_i)
t*=2
$m=[]
n.times{|i|
	$m.push(gets.split.map(&:to_i))
	$m[i][0]*=2
	$m[i][0]-=$m[i][1]
	$m[i][1]*=2
}

q=Set.new
$m.each{|h|
	if(check(h[0]-t,t)) then
		q.add(h[0]-t)
	end
	if(check(h[0]+h[1],t)) then
		q.add(h[0]+h[1])
	end
}
puts q.length
