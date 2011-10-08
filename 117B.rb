v=1000000000;
input=gets.split.map(&:to_i);
a=input[0];b=input[1];m=input[2];
if a==v then
	a-=1
end
if b==v then
	b-=1
end
v%=m;
if b>=m || v==0 then
	puts 2
else
	el=[a,m].min
	j=v
	for i in 1..el
		if j+b>=m then

		else
			printf "1 %09d\n",i
			exit
		end
		j+=v
		if j>m then
			j-=m
		end	
	end
	puts 2
end
