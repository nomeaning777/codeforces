n = gets.to_i
r = gets.split.map(&:to_i).sort.reverse

back = 0
ans = 0
r.each do |x|
	if back<x
		ans += x*x	
		back = x
	else
		ans -= x*x
		back = 0
	end
end
p ans*3.14159265358979323846
