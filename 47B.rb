res=["ABC","ACB","BAC","BCA","CAB","CBA"]
input=[gets.split[0],gets.split[0],gets.split[0]]
res.each{|ans|
	check=1
	input.each{|i|
		if i[1]==">" then
			a0=0
			a1=0
			3.times{|j|
				if ans[j]==i[0] then
					a0=j
				end
				if ans[j]==i[2] then
					a1=j
				end	
			}
			if a0<=a1 then
				check=0
			end	
		else
			a0=0
			a1=0
			3.times{|j|
				if ans[j]==i[0] then
					a0=j
				end
				if ans[j]==i[2] then
					a1=j
				end	
			}
			if a0>=a1 then
				check=0
			end	

		end
	}
	if check==1 then
		puts ans
		exit
	end	

}
puts "Impossible"
