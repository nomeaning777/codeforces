def solve(data)
	if data.match(	eval("/[a-z]*"+$a+"[a-z]*"+$b+"[a-z]*/") ) != nil then
		return true
	else
		return false
	end	
end

input=gets.split[0]
$a=gets.split[0]
$b=gets.split[0]
if solve(input) then
	if solve(input.reverse) then
		puts "both"
	else
		puts "forward"
	end
else
	if solve(input.reverse) then
		puts "backward"
	else
		puts "fantasy"
	end
end	

