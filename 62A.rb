def solve(a,b)
	#bbabbabbabbabbabb
	#abababa
	if (a+1)*2<b || (b+1)<a then
		return false
	end
	return true
end

al,ar=gets.split.map(&:to_i)
bl,br=gets.split.map(&:to_i)

if solve(al,br) || solve(ar,bl) then
	puts "YES"
else
	puts "NO"
end	


