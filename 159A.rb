n, d = gets.split.map(&:to_i)
ans = Hash.new

input = Array.new
n.times{
	a, b, t = gets.split
	t = t.to_i
	input.push([a, b, t])
}
input.each{|a|
	input.each{|b|
		if a[0] == b[1] && a[1] == b[0] then
			if (a[2]-b[2]).abs <= d && (a[2]-b[2]).abs > 0 then
				tmp = [a[0],a[1]]
				tmp.sort!
				ans[tmp]=1
			end
		end
	}
}
p ans.count
ans.each{|a,b|
	puts "#{a[0]} #{a[1]}"
}

