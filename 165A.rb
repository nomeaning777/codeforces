n = gets.to_i
points = []
n.times do
	points << gets.split.map(&:to_i)
end
ans = 0
points.each do |pts1|
	check = 0
	points.each do |pts2|
		check |= 1 if pts1[0] < pts2[0] && pts1[1] == pts2[1]
		check |= 2 if pts1[0] > pts2[0] && pts1[1] == pts2[1]
		check |= 4 if pts1[1] < pts2[1] && pts1[0] == pts2[0]
		check |= 8 if pts1[1] > pts2[1] && pts1[0] == pts2[0]
	end
	ans += 1 if check == 15
end
p ans

