a=[gets,gets,gets]
l=[]
a.each{ |s|
	l.push(s.length)
}	
for i in 0..2
	a[i]=a[i].gsub("a","")
	a[i]=a[i].gsub("o","")
	a[i]=a[i].gsub("u","")
	a[i]=a[i].gsub("i","")	
	a[i]=a[i].gsub("e","")
end
if l[0]-a[0].length==5 && l[1]-a[1].length==7 && l[2]-a[2].length==5 then
	puts "YES"
else
	puts "NO"
end 	


