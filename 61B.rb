input=[gets.split[0],gets.split[0],gets.split[0]]
for i in 0..2
	input[i]=input[i].gsub(/[:;,_-]/,"").upcase
end
n=gets.to_i
n.times{
	data=gets.split[0]
	data=data.gsub(/[:;,_-]/,"").upcase
	ans=0
	input.permutation.to_a.each{|a|
		if data==a[0]+a[1]+a[2] then
			puts "ACC"
			ans=1
			break
		end	
	}
	if ans==0 then
		puts "WA"
	end	
}

