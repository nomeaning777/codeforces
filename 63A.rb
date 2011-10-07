name=[]
type=[]
n=gets.to_i
for i in 0..n-1
	input=gets.split
	name.push(input[0])
	type.push(input[1])
end
for i in 0..n-1
	if type[i]=="rat" then
		puts name[i]
	end
end
for i in 0..n-1
	if type[i]=="child" || type[i]=="woman" then
		puts name[i]
	end
end
for i in 0..n-1
	if type[i]=="man" then
		puts name[i]
	end
end
for i in 0..n-1
	if type[i]=="captain" then
		puts name[i]
	end
end

