def solve(data)
	q=data.index($a)
	if q==nil then
		return false
	end
	r=data.rindex($b)
	if r==nil then
		return false
	end	
	return q+$a.length<=r
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

