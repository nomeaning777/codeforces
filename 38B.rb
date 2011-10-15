def check_l(x1,y1,x2,y2)
	if x1==x2 || y1==y2 then
		return false
	else
		return true
	end
end
$dx=[1,2,2,1,-1,-2,-2,-1]
$dy=[2,1,-1,-2,-2,-1,1,2]
def check_n(x1,y1,x2,y2)
	8.times{|i|
		if x1+$dx[i]==x2 && y1+$dy[i]==y2 then
			return false
		end	
	}
	if x1==x2 && y1==y2 then
		return false
	end	
	return true
end
a=gets.split[0].bytes.to_a
b=gets.split[0].bytes.to_a
x1=a[0]-97
y1=a[1]-49
x2=b[0]-97
y2=b[1]-49

ans=0
8.times{|x|
	8.times{|y|
		if check_l(x1,y1,x,y) then
			if check_n(x,y,x1,y1) then
				if check_n(x,y,x2,y2) then
					ans+=1
				end
			end
		end
	}
}
puts ans
