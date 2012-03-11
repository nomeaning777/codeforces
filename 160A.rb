sum=0
n=gets.to_i
a=gets.split.map(&:to_i)
a.sort!
a.reverse!
a.each{|i| sum+=i }
ans=0
tmp=0
a.each{|i|
	ans+=1
	sum-=i
	tmp+=i
	if tmp>sum
		p ans
		exit
	end
}
