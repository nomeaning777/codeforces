a=0
b=0
res="NO"
gets.each_byte do |c| 
	if c == 48 then
		a+=1
		if a>=7 then res="YES" end
		b=0
	else
		b+=1
		if b>=7 then res="YES" end
		a=0
	end	
end

puts res

