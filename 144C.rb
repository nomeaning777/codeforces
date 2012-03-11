a=gets.split[0].bytes.to_a
b=gets.split[0].bytes.to_a
cntb=Array.new(256,0)
if a.length<b.length then
	puts 0
	exit
end
ans=0
cnta=Array.new(256,0)
0.upto(b.length-1){|i|
	cnta[a[i]]+=1
	cntb[b[i]]+=1
}
ok=true
for i in 97..122
	if cnta[i]>cntb[i] then
		ok=false
		break
	end
end
ans+=1 if ok
for i in 1..a.length-b.length
	cnta[a[i-1]]-=1
	cnta[a[i+b.length-1]]+=1
	ok=true
	for i in 97..122
		if cnta[i]>cntb[i] then
			ok=false
			break
		end
	end
	ans+=1 if ok
end
p ans
