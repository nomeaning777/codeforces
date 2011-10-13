input=gets.split.map(&:to_i)
time=0
loop do
	if time%3==0 then
		input[0]-=2
	elsif time%3==1 then
		input[1]-=2
	elsif time%3==2 then
		input[2]-=2
	end
	if input[0]<=0&&input[1]<=0&&input[2]<=0 then
		break
	end	
	time+=1
end
puts time+30
