n=gets.to_i
back=-1
(1..n).each{
	data=gets.split[0]
	if(back==data[0].to_i) then
		puts "NO"
		exit
	end
	back=data[0].to_i
	for i in 1..data.length-1
		if(data[i].to_i!=data[0].to_i) then
			puts "NO"
			exit
		end
	end
}
puts "YES"

