n,a=gets.to_i,gets
if /[01235689]/=~a then
	puts "NO"
	exit
end
sum=0
n.times{|i|
	if i<n/2  then
		sum+=a[i].to_i
	else
		sum-=a[i].to_i
	end
}
puts "YES" if sum==0
puts "NO" if sum!=0

