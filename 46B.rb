$s=gets.split.map(&:to_i)
size=["S", "M", "L", "XL","XXL"]
def get(x)
	for u in 0..5
		if x+u<5 && $s[x+u]>0 then
			$s[x+u]-=1
			return x+u
		end
		if x-u>=0 && $s[x-u]>0 then
			$s[x-u]-=1
			return x-u
		end	
	end
	return 0
end
k=gets.to_i
k.times{
	puts size[get(size.index(gets.split[0]))]
}
