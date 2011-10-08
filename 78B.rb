n=gets.to_i
used={}
used.default=0
str=""
used.store(str,1)
strs=["R","O","Y","G","B","I","V"]
loop do
	str=""
	queue=[]
	for i in 1..n
		ne=0
		loop do
			ne=rand(7)
			ok=1
			queue.each{|j|
				if strs[ne]==j then
					ok=0
					break
				end
			}
			if ok==1 then
				break
			end
		end
		str+=strs[ne]
		queue.push(strs[ne])
		#p queue
		if queue.length>3 then
			queue.shift
		end
	end
	ok=1
	for i in 0..6
		if str.index(strs[i])==nil then
			ok=0
			break
		end
	end
	if ok==0 then
		next
	end
	for i in 0..n-1
		tstr=""
		if i+3>=n then
			tstr=str[i..n-1]+str[0..(i+3)%n]
			#tstr="ABCD"
		else
			tstr=str[i..i+3]
		end
		tmp={}
		tmp.default=0
		for j in 0..3
			tmp[tstr[j]]+=1
			if tmp[tstr[j]]>=2 then
				ok=0
				break
			end	
		end
	end
	if ok==1 then
		break
	end	
end
puts str

