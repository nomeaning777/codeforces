d=gets.split[1].to_i
ans=0
i=gets.split.map(&:to_i)
i.each{|a|
	i.each{|b|
		ans=ans+(((a-b).abs<=d)?1:0) 
	}
}
puts ans-i.length
