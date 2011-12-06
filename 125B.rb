str=gets
input=str[1..str.length-3].split("><")
depth=0
input.each{|a|
	if a[0]=="/" then
		depth-=1
		print "  "*depth
	else
		print "  "*depth
		depth+=1 
	end
	print "<"+a+">\n"
}

