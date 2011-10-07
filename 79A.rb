input=gets.split.map(&:to_i)
x=input[0]
y=input[1]
turn=0
name=["Ciel","Hanako"];
loop do
	if x*100+y*10<220 || y<2 then
		puts name[1-turn]
		break
	end	
	if turn==0 then
		2.downto(0){|i|
			if i<=x then
				x-=i
				y-=22-10*i
				break
			end 
		}
	else
		22.downto(0){|i|
			if i<=y then
				if (220-i*10) % 100 ==0  then
					if (220-i*10)/100<=x then
						y-=i
						x-=(220-i*10)/100
						break
					end
				end
			end
		}
	end

	turn=1-turn
end
