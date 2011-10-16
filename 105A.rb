input=gets.split
n,m=input[0..1].map(&:to_i)
k=(input[2].to_f*100+1e-8).to_i
res={}
res.default=0
n.times{
	input=gets.split
	input[1]=(input[1].to_i*k/100).to_i
	if input[1]>=100 then
		res.store(input[0],input[1])
	end
}
m.times{
	input=gets.split[0]
	res[input]+=0
}
puts res.length
res.sort.each do|k, v|
	puts "#{k} #{v}"
end
