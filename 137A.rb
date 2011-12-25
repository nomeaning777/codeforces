input=gets.split[0].gsub("CP","C,P").gsub("PC","P,C").split(",")
ans=0
input.each{|a|
	ans+=(a.length+4)/5
}
p ans



