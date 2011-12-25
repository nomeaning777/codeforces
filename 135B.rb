points=[]
8.times{|i|
	points.push(gets.split.map(&:to_i).push(i+1))
}
points.permutation.each(){|i|
	dx=i[1][0]-i[0][0]
	dy=i[1][1]-i[0][1]
	if i[2][0]-i[1][0]!=dy then next end
	if i[3][0]-i[2][0]!=-dx then next end
	if i[0][0]-i[3][0]!=-dy then next end
	if i[2][1]-i[1][1]!=-dx then next end
	if i[3][1]-i[2][1]!=-dy then next end
	if i[0][1]-i[3][1]!=dx then next end
	dx=i[5][0]-i[4][0]
	dy=i[5][1]-i[4][1]
	if i[7][0]-i[6][0]!=-dx then next end
	if i[7][1]-i[6][1]!=-dy then next end
	dx2=i[6][0]-i[5][0]
	dy2=i[6][1]-i[5][1]
	if i[4][0]-i[7][0]!=-dx2 then next end
	if i[4][1]-i[7][1]!=-dy2 then next end
	if dx*dx2+dy*dy2!=0 then next end
	
	puts "YES"
	4.times{|j|
		print "#{i[j][2]} "
	}
	puts
	4.times{|j|
		print "#{i[j+4][2]} "
	}
	puts
	exit




}
puts "NO"
