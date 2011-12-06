n=gets
t=gets.split.map(&:to_i)
cnt=Hash.new
cnt.default=0
t.each{|i|
	cnt[i]+=1
}
ans=cnt[0]*(cnt[0]-1)/2
for i in 1..10
	ans+=cnt[i]*cnt[-i]
end
p ans
