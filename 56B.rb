n=gets.to_i
a=gets.split.map(&:to_i)
l,r=99999,0
1.upto(n){|i|
	if a[i-1]!=i then
		l=[l,i].min
		r=[r,i].max
	end
}
if l==99999 then
	puts "0 0"
	exit
end	
a=((l-2>=0)?a[0..(l-2)]:[])+a[(l-1)..(r-1)].reverse+a[(r)..(a.length-1)]
1.upto(n){|i|
	if(a[i-1]!=i) then
		puts "0 0"
		exit
	end
}
puts "#{l} #{r}"
