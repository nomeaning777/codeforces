n=gets.to_i
m=gets.split[0]
i=0
s=0
if n%3==1 then
	print m[0..1]
	print "-"
	print m[2..3]
	s=1
	i=4
elsif n%3==2 then
	print m[0..1]
	s=1
	i=2
end
while i<n
	if s>0 then
		print "-"
	end
	s=1
	print m[i..(i+2)]
	i+=3
end
puts

