pass=gets.split[0]
p=[]
for i in 0..9
	p.push(gets.split[0])
end
for i in 0..7
	for j in 0..9
		if p[j]==pass[i*10,10] then
			print j
		end	
	end
end
puts
