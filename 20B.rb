input=gets.split.map(&:to_i)
a=input[0]
b=input[1]
c=input[2]
if a<0 then
	b=-b
	c=-c
	a=-a
end
d=b*b-4*a*c
if a==0 then
	if b==0 then
		if c==0 then
			puts -1
		else
			puts 0
		end	
	else
		puts 1
		printf "%.7f\n",-c*1.0/b
	end
elsif d==0 then 
	puts 1
	printf "%.7f\n",-b/(2*a)
elsif d>0 then
	puts 2
	printf "%.7f\n",(-b-Math::sqrt(d))/(2*a)
	printf "%.7f\n",(-b+Math::sqrt(d))/(2*a)
else
	puts 0
end

