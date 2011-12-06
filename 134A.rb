sum=gets.to_i*0
a=gets.split.map(&:to_i)
a.each{|s| sum+=s}
ans=[]
a.length.times{|i|
	if a[i]*(a.length-1)==(sum-a[i])
		ans.push(i)
	end
}
p ans.length
ans.each{|i| print "#{i+1} "}
puts
