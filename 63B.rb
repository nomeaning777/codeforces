k=gets.split[1].to_i
a=gets.split.map(&:to_i)

ranks=Array.new(104,0)
a.each{|i| ranks[i]+=1}
ans=0
n=a.length
loop do
	if ranks[k]==n then
		puts ans
		exit
	end
	next_rank=Array.new(104,0)
	1.upto(k-1){|a|
		next_rank[a]+=[ranks[a]-1,0].max
		next_rank[a+1]+=[ranks[a],1].min
	}
	next_rank[k]+=ranks[k]
	ranks=next_rank
	ans+=1
end	

