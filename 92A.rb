input=gets.split.map(&:to_i)
n=input[0]
m=input[1]
exitloop=0
while exitloop==0 
	for i in 1..n
		if m<i then
			puts m
			exitloop=1
			break
		end
		m-=i
	end
end	
