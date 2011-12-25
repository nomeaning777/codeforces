n=gets.to_i
a=Array.new(n,0)
i=gets.split.map(&:to_i)
n.times{|j|
	a[i[j]-1]=j
}
a.each{|j|
	print "#{j+1} "
}
puts
