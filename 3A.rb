s=gets.split[0].bytes.to_a
t=gets.split[0].bytes.to_a
sx=s[0]-97
sy=56-s[1]
tx=t[0]-97
ty=56-t[1]
puts [(sx-tx).abs,(sy-ty).abs].max
loop do
	if sx==tx && sy==ty then
		break
	end	
	if sx<tx then
		print "R"
		sx+=1
	elsif sx>tx then
		print "L"
		sx-=1
	end
	if sy<ty then
		print "D"
		sy+=1
	elsif sy>ty then
		sy-=1
		print "U"
	end	
	puts
end
