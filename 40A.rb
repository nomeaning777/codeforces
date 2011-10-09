point=gets.split.map(&:to_i)
x=point[0]
y=point[1]
if x.abs==0 || y.abs==0 then
	puts "black"
	exit
end
d=x*x+y*y
1.upto(999999){|i|
	if (i%2==1 && x*y>0) || (i%2==0 && x*y<0) then
		#black
		if d<=i*i then
			puts "black"
			exit
		end	
	else
		#white
		if d<i*i then
			puts "white"
			exit
		end
	end
}


