
input=gets.split.map(&:to_i)
map=[]
for i in 0..input[0]-1
	map.push(gets.split[0])
end
sx=0
str=""
for i in 0..input[1]-1
	str+="."
end
for i in 0..input[0]-1
	if map[i]==str then
		sx=i+1
	else
		break
	end	
end
ex=input[0]-1
(input[0]-1).downto(0){|i|
	if map[i]==str then
		ex=i-1
	else
		break
	end	
}

sy=0
ey=input[1]-1
for i in 0..input[1]-1
	ok=1
	for j in 0..input[0]-1
		if map[j][i]=="*" then
			ok=false
			break
		end
	end
	if ok then
		sy=i+1
	else
		break
	end	
end

(input[1]-1).downto(0){|i|
	ok=1
	for j in 0..input[0]-1
		if map[j][i]=="*" then
			ok=false
			break
		end
	end
	if ok then
		ey=i-1
	else
		break
	end	
}




sx.upto(ex){|i|
	puts map[i][sy..ey]
}
