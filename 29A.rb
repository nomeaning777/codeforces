n=gets.to_i
data=[]
n.times{data.push(gets.split.map(&:to_i)) }
data.each do |i|
	data.each do |j|
		if i[0]+i[1]==j[0] && j[0]+j[1]==i[0] then
			puts "YES"
			exit
		end
	end
end
puts "NO"
