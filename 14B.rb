n,x=gets.split.map(&:to_i)
sum=Array.new(1002,0)
tsum=Array.new(1002,0)
n.times{
	a,b=gets.split.map(&:to_i).sort
	b+=1
	tsum[a]+=1
	tsum[b]-=1
}
sum[0]=tsum[0]
ans=[]
ans.push(x) if sum[0]==n 
1.upto(1001){|i|
	sum[i]=sum[i-1]+tsum[i]
	if sum[i]==n then
		ans.push((x-i).abs)
	end
}
ans.push(-1) if ans.size()==0

p ans.min

