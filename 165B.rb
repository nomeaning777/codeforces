def solve(v,k)
	k = k.to_f
	res = 0
	i = 0
	while v / (k**i) >= 1.0
		res += (v/(k**i)).to_i
		i += 1
	end
	return res 
end

n,k = gets.split.map(&:to_i)
start = n * (k - 1) / k
for v in (start - 10000)..(start + 10000)
	if solve(v,k) >= n
		puts v
		exit
	end
end

