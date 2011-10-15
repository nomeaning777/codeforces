a=gets.split[0].bytes.to_a
b=gets.split[0]
cnt=Array.new(10,0)
a.each{|i|
	cnt[i-48]+=1
}
ans=""
if cnt[0]>0 then
	1.upto(9){|i|
		if cnt[i]>0 then
			ans=i.to_s
			cnt[i]-=1
			break
		end
	}
end
0.upto(9){|i|
	cnt[i].times{
		ans+=i.to_s
	}
}	
if ans==b then
	puts "OK"
else
	puts "WRONG_ANSWER"
end	
