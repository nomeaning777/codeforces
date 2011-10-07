a=gets.to_i
b=gets.to_i
c=a+b
za=a.to_s.gsub("0","").to_i
zb=b.to_s.gsub("0","").to_i
zc=c.to_s.gsub("0","").to_i
if za+zb==zc then
	puts "YES"
else
	puts "NO"
end	

