require 'prime'
input=gets.split.map(&:to_i)
p=Prime.take(50)
res="NO"
for i in 0..49
	if p[i]==input[0] && p[i+1]==input[1] then
		res="YES"
		end
end

puts res
