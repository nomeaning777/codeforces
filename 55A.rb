n=gets.to_i
ac=Array.new(n,0)
now=0
for i in 0..2*n
	now=(now+i)%n
	ac[now]=1
end
k=1
for i in 0..n-1
	k&=ac[i]
end
if k==1 then
	puts "YES"
else
	puts "NO"
end	
