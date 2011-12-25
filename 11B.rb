n=gets.to_i.abs
if n==0 then puts "0";exit end

i=1
k=0
loop do
	k+=i
	if k>=n && (k-n)%2==0 then break end
	i+=1
end

puts i
