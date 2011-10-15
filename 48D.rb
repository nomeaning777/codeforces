n=gets.to_i
a=gets.split.map(&:to_i)
cnt=Array.new(100005,0)
a.each{|i|
	cnt[i]+=1
}
1.upto(100003){|i|
	if cnt[i]<cnt[i+1] then
		puts "-1"
		exit
	end	
}
puts cnt[1]
a.each{|i|
	printf "%d ",cnt[i]
	cnt[i]-=1
}
puts
