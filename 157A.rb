n = gets.to_i
map = []
n.times do
	map << gets.split.map(&:to_i)
end
ans = 0
n.times do |x|
	n.times do |y|
		s1, s2 = 0, 0
		n.times do |i|
			s1+=map[i][x]
			s2+=map[y][i]
		end
		ans += 1 if s1>s2
	end
end
p ans
