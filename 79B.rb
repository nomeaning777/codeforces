input=gets.split.map(&:to_i)
h=input[0]
w=input[1]
k=input[2]
q=input[3]
cnt=Array.new(h,0)
waste=[]
k.times{
	input=gets.split.map(&:to_i)
	input[0]-=1
	input[1]-=1
	waste.push(input)
	cnt[input[0]]+=1
}
q.times{
	input=gets.split.map(&:to_i)
	input[0]-=1
	input[1]-=1
	x=input[1]
	y=input[0]
	no=y*w+x
	is_was=0
	waste.each{|was|
		if was[0]<y then
			no-=1
		end	
		if was[0]==y then
			if was[1]<=x then
				no-=1
			end
			if was[1]==x then
				is_was+=1
			end
		end
	}
	if is_was>0 then
		puts "Waste"
	elsif
		puts ["Carrots","Kiwis","Grapes"][no%3]
	end
}
