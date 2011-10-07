def str2val(x)
	if x=="T" then
		return 10
	elsif x=="J" then
		return 11
	elsif x=="Q" then
		return 12
	elsif x=="K" then
		return 13
	elsif x=="A" then
		return 14
	else
		return x.to_i
	end
end
trump_suit=gets.split[0]
player=gets.split
if player[0][1,1]!=player[1][1,1] then
	if trump_suit==player[0][1,1] then
		puts "YES"
	else
		puts "NO"
	end	
else
	if str2val(player[0][0,1])>str2val(player[1][0,1]) then
		puts "YES"
	else
		puts "NO"
	end 	
end

